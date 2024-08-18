// Various examples for figuring out how AngelScript works in Postal 3 Ultrapatch

class CExample : IPostal3Script
{
	// This makes all NPCs with the Manner "SoccerMom" puke everytime you call this function
	// (You can try this out on PornWorld)
	void NastyMom()
	{
		array<CP3SObj@> arr = engine.GetArrayOfP3SObjs();
		for (uint i = 0; i < arr.length(); i++)
		{
			if ( @arr[i] == null )
				continue;
			if ( !arr[i].HasAI() )
				continue;
			if ( !arr[i].IsNPC() )
				continue;
			if ( arr[i].GetManner() != "SoccerMom")
				continue;
				
			arr[i].State("st_idle");
			arr[i].Pattern("pt_barf");
		}
	}
}