
CREATE VIEW [dbo].[EmployeeKPIList]
AS
SELECT eKPI.UserKpiID, eKPI.Description AS KPIDescription, eKPI.EmployeeID, employee.FQDN, pointMatrix.Description AS PointMatrixDescription, pointMatrix.PointValue, 
	pointMatrix.RewardPointValue, pointType.description AS PointTypeDescription, eKPI.CreatedBy, eKPI.CreatedDate, eKPIStatus.StatusDescription as Status, eKPIStatus.Description as StatusDescription
FROM EmployeeKPI eKPI (NOLOCK)
	INNER JOIN Employee employee (NOLOCK) ON eKPI.EmployeeID = employee.EmployeeID
	INNER JOIN PointMatrix pointMatrix (NOLOCK) ON eKPI.PointMatrixID = pointMatrix.PointMatrixID
	INNER JOIN PointType pointType (NOLOCK) ON pointMatrix.PointTypeID = pointType.pointTypeID
	LEFT JOIN EmployeeKPIStatus eKPIStatus (NOLOCK) ON eKPI.EmployeeKPIStatusID = eKPIStatus.EmployeeKPIStatusID
