// Destroy the sound on init immediately
class CP3SSound : IPostal3Script
{	
	CP3SObj@ self;
	CSound@ sound;
	EHANDLE handle;
	CBaseEntity@ test;
	
	array<CP3SObj@> arr;
	array<CBaseEntity@> arr2;
	
	CP3SSound(CP3SObj@ obj)
	{
		if (@obj == @null)
			return;
	
		@self = @obj;
		
		@sound = self.GetSoundPtr();
		
		handle = self.GetBaseEntity();
		@test = self.GetBaseEntity();
		
		arr.insertLast(self);
		arr2.insertLast(test);
	}
	
	void Init()
	{
		server.DelayedExecution(server.GetCurTime() + /*self.GetSoundExpireDuration() +*/ 3.00f, "CP3SSound", "RemoveThis", self);
		self.SetAttr("sound_init", 1);
	}
	
	void DoEffect()
	{
		/*
		if (@sound == @null)
			return;


		int soundType = sound.m_iType;
		//Vector impact = self.GetBaseEntity().GetAbsOrigin();
		EHANDLE owner = sound.m_hOwner;

		if (owner.IsValid() == false)
			return;

		CBaseEntity@ ptr = owner.GetEntity();

		if (@ptr == @null)
			return;

		if (ptr.GetP3SObj() == @null)
			return;

		//bool bPlayer = ptr.GetP3SObj().IsPlayer();
		bool bBullet = Bitwise_AND(SOUND_BULLET_IMPACT, soundType);

		// do effect
		// grab information from Sound pointer, make NPCs go crazy, etc...
		array<CP3SObj@> arr = server.GetArrayOfNPCs();

		for (uint i = 0; i < arr.length(); i++)
		{
			if (@arr[i] == @null)
				continue;

			if (arr[i].IsNPC() == false)
				continue;

			if (bBullet == false)
				continue;

			float dist = server.CalcDistance(arr[i], self) / 16;

			if (dist > 2048.0f)
				continue;

			Printf("Get spooked\n");
			arr[i].Relationship(ptr.GetP3SObj(), D_HT, 1);
			arr[i].SetEnemy(ptr.GetP3SObj(), true);
			arr[i].FireEvent("OnHit", ptr.GetP3SObj());

			//Printf("%d >> %f (%s)\n", soundType, dist, arr[i].GetBaseEntity().GetName());
		}
		*/
	}
	
	void RemoveThis()
	{
		//if (@self == @null)
			//return;

		//if (handle.IsValid() == false)
			//return;
		
		CBaseEntity@ soundent = @self.GetBaseEntity();
		if (@soundent != @null)
		{
			//DoEffect();
			
			Remove(soundent);
			//Warning("Removed sound '%f'\n", server.GetCurTime());
		}
		else
		{
			Warning("NULL ENT!!!!\n");
		}
	}
}