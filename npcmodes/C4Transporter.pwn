#define RECORDING "C4Transporter"

#include <a_npc>
main(){}

public OnRecordingPlaybackEnd()
{
	StartRecordingPlayback(1, RECORDING);
}

public OnNPCEnterVehicle(vehicleid, seatid)
{
	StartRecordingPlayback(1, RECORDING);
}
public OnNPCExitVehicle()
{
	StopRecordingPlayback();
}



