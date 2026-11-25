
// God mode remover/checker for Motorhead
[HIDDEN]
class CMotorheadGodMode : IPostal3Script
{	
	// Remove god mode from Motorhead when on MLG/MLI
	[HOOK NPC OnFSMStart GLOBAL]
	void OnFSMStart()
	{
		CP3SObj@ self = GetContextCaller();
		if (@self == @null)
			return;
			
		// Only Motorhead
		if (!self.IsMotorhead())
			return;
			
		string map = gpGlobals.mapname;
		map.toLower();
		
		if (map == "mlg" || map == "mli")
		{
			self.RemoveAttr("ea_invulnerable");
		}
		
		// Fall back to Motorhead's own OnFSMStart func....
		server.InstantExecution("CMotorhead", "OnFSMStart", self);
	}
}

[HIDDEN]
class CMotorhead : IPostal3Script
{
	CP3SObj@ self;
	CMotorhead(CP3SObj@ obj)
	{
		@self = @obj;
	}
	
	void OnFSMStart()
	{
		// ...
	}
}