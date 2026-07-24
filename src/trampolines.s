.text
.globl timeGetTime
timeGetTime:
    jmp *g_ptr_timeGetTime(%rip)

.globl timeGetDevCaps
timeGetDevCaps:
    jmp *g_ptr_timeGetDevCaps(%rip)

.globl timeBeginPeriod
timeBeginPeriod:
    jmp *g_ptr_timeBeginPeriod(%rip)

.globl timeEndPeriod
timeEndPeriod:
    jmp *g_ptr_timeEndPeriod(%rip)

.globl timeGetSystemTime
timeGetSystemTime:
    jmp *g_ptr_timeGetSystemTime(%rip)

.globl timeSetEvent
timeSetEvent:
    jmp *g_ptr_timeSetEvent(%rip)

.globl timeKillEvent
timeKillEvent:
    jmp *g_ptr_timeKillEvent(%rip)

.globl waveOutGetNumDevs
waveOutGetNumDevs:
    jmp *g_ptr_waveOutGetNumDevs(%rip)

.globl waveOutGetDevCapsA
waveOutGetDevCapsA:
    jmp *g_ptr_waveOutGetDevCapsA(%rip)

.globl waveOutGetDevCapsW
waveOutGetDevCapsW:
    jmp *g_ptr_waveOutGetDevCapsW(%rip)

.globl waveOutGetVolume
waveOutGetVolume:
    jmp *g_ptr_waveOutGetVolume(%rip)

.globl waveOutSetVolume
waveOutSetVolume:
    jmp *g_ptr_waveOutSetVolume(%rip)

.globl waveOutGetErrorTextA
waveOutGetErrorTextA:
    jmp *g_ptr_waveOutGetErrorTextA(%rip)

.globl waveOutGetErrorTextW
waveOutGetErrorTextW:
    jmp *g_ptr_waveOutGetErrorTextW(%rip)

.globl waveOutOpen
waveOutOpen:
    jmp *g_ptr_waveOutOpen(%rip)

.globl waveOutClose
waveOutClose:
    jmp *g_ptr_waveOutClose(%rip)

.globl waveOutPrepareHeader
waveOutPrepareHeader:
    jmp *g_ptr_waveOutPrepareHeader(%rip)

.globl waveOutUnprepareHeader
waveOutUnprepareHeader:
    jmp *g_ptr_waveOutUnprepareHeader(%rip)

.globl waveOutWrite
waveOutWrite:
    jmp *g_ptr_waveOutWrite(%rip)

.globl waveOutPause
waveOutPause:
    jmp *g_ptr_waveOutPause(%rip)

.globl waveOutRestart
waveOutRestart:
    jmp *g_ptr_waveOutRestart(%rip)

.globl waveOutReset
waveOutReset:
    jmp *g_ptr_waveOutReset(%rip)

.globl waveOutBreakLoop
waveOutBreakLoop:
    jmp *g_ptr_waveOutBreakLoop(%rip)

.globl waveOutGetPosition
waveOutGetPosition:
    jmp *g_ptr_waveOutGetPosition(%rip)

.globl waveOutGetPitch
waveOutGetPitch:
    jmp *g_ptr_waveOutGetPitch(%rip)

.globl waveOutSetPitch
waveOutSetPitch:
    jmp *g_ptr_waveOutSetPitch(%rip)

.globl waveOutGetPlaybackRate
waveOutGetPlaybackRate:
    jmp *g_ptr_waveOutGetPlaybackRate(%rip)

.globl waveOutSetPlaybackRate
waveOutSetPlaybackRate:
    jmp *g_ptr_waveOutSetPlaybackRate(%rip)

.globl waveOutGetID
waveOutGetID:
    jmp *g_ptr_waveOutGetID(%rip)

.globl waveOutMessage
waveOutMessage:
    jmp *g_ptr_waveOutMessage(%rip)

.globl waveInGetNumDevs
waveInGetNumDevs:
    jmp *g_ptr_waveInGetNumDevs(%rip)

.globl waveInGetDevCapsA
waveInGetDevCapsA:
    jmp *g_ptr_waveInGetDevCapsA(%rip)

.globl waveInGetDevCapsW
waveInGetDevCapsW:
    jmp *g_ptr_waveInGetDevCapsW(%rip)

.globl waveInGetErrorTextA
waveInGetErrorTextA:
    jmp *g_ptr_waveInGetErrorTextA(%rip)

.globl waveInGetErrorTextW
waveInGetErrorTextW:
    jmp *g_ptr_waveInGetErrorTextW(%rip)

.globl waveInOpen
waveInOpen:
    jmp *g_ptr_waveInOpen(%rip)

.globl waveInClose
waveInClose:
    jmp *g_ptr_waveInClose(%rip)

.globl waveInPrepareHeader
waveInPrepareHeader:
    jmp *g_ptr_waveInPrepareHeader(%rip)

.globl waveInUnprepareHeader
waveInUnprepareHeader:
    jmp *g_ptr_waveInUnprepareHeader(%rip)

.globl waveInAddBuffer
waveInAddBuffer:
    jmp *g_ptr_waveInAddBuffer(%rip)

.globl waveInStart
waveInStart:
    jmp *g_ptr_waveInStart(%rip)

.globl waveInStop
waveInStop:
    jmp *g_ptr_waveInStop(%rip)

.globl waveInReset
waveInReset:
    jmp *g_ptr_waveInReset(%rip)

.globl waveInGetPosition
waveInGetPosition:
    jmp *g_ptr_waveInGetPosition(%rip)

.globl waveInGetID
waveInGetID:
    jmp *g_ptr_waveInGetID(%rip)

.globl waveInMessage
waveInMessage:
    jmp *g_ptr_waveInMessage(%rip)

.globl midiOutGetNumDevs
midiOutGetNumDevs:
    jmp *g_ptr_midiOutGetNumDevs(%rip)

.globl midiOutGetDevCapsA
midiOutGetDevCapsA:
    jmp *g_ptr_midiOutGetDevCapsA(%rip)

.globl midiOutGetDevCapsW
midiOutGetDevCapsW:
    jmp *g_ptr_midiOutGetDevCapsW(%rip)

.globl midiOutGetErrorTextA
midiOutGetErrorTextA:
    jmp *g_ptr_midiOutGetErrorTextA(%rip)

.globl midiOutGetErrorTextW
midiOutGetErrorTextW:
    jmp *g_ptr_midiOutGetErrorTextW(%rip)

.globl midiOutOpen
midiOutOpen:
    jmp *g_ptr_midiOutOpen(%rip)

.globl midiOutClose
midiOutClose:
    jmp *g_ptr_midiOutClose(%rip)

.globl midiOutPrepareHeader
midiOutPrepareHeader:
    jmp *g_ptr_midiOutPrepareHeader(%rip)

.globl midiOutUnprepareHeader
midiOutUnprepareHeader:
    jmp *g_ptr_midiOutUnprepareHeader(%rip)

.globl midiOutShortMsg
midiOutShortMsg:
    jmp *g_ptr_midiOutShortMsg(%rip)

.globl midiOutLongMsg
midiOutLongMsg:
    jmp *g_ptr_midiOutLongMsg(%rip)

.globl midiOutReset
midiOutReset:
    jmp *g_ptr_midiOutReset(%rip)

.globl midiOutCachePatches
midiOutCachePatches:
    jmp *g_ptr_midiOutCachePatches(%rip)

.globl midiOutCacheDrumPatches
midiOutCacheDrumPatches:
    jmp *g_ptr_midiOutCacheDrumPatches(%rip)

.globl midiOutGetID
midiOutGetID:
    jmp *g_ptr_midiOutGetID(%rip)

.globl midiOutMessage
midiOutMessage:
    jmp *g_ptr_midiOutMessage(%rip)

.globl midiOutGetVolume
midiOutGetVolume:
    jmp *g_ptr_midiOutGetVolume(%rip)

.globl midiOutSetVolume
midiOutSetVolume:
    jmp *g_ptr_midiOutSetVolume(%rip)

.globl midiInGetNumDevs
midiInGetNumDevs:
    jmp *g_ptr_midiInGetNumDevs(%rip)

.globl midiInGetDevCapsA
midiInGetDevCapsA:
    jmp *g_ptr_midiInGetDevCapsA(%rip)

.globl midiInGetDevCapsW
midiInGetDevCapsW:
    jmp *g_ptr_midiInGetDevCapsW(%rip)

.globl midiInGetErrorTextA
midiInGetErrorTextA:
    jmp *g_ptr_midiInGetErrorTextA(%rip)

.globl midiInGetErrorTextW
midiInGetErrorTextW:
    jmp *g_ptr_midiInGetErrorTextW(%rip)

.globl midiInOpen
midiInOpen:
    jmp *g_ptr_midiInOpen(%rip)

.globl midiInClose
midiInClose:
    jmp *g_ptr_midiInClose(%rip)

.globl midiInPrepareHeader
midiInPrepareHeader:
    jmp *g_ptr_midiInPrepareHeader(%rip)

.globl midiInUnprepareHeader
midiInUnprepareHeader:
    jmp *g_ptr_midiInUnprepareHeader(%rip)

.globl midiInAddBuffer
midiInAddBuffer:
    jmp *g_ptr_midiInAddBuffer(%rip)

.globl midiInStart
midiInStart:
    jmp *g_ptr_midiInStart(%rip)

.globl midiInStop
midiInStop:
    jmp *g_ptr_midiInStop(%rip)

.globl midiInReset
midiInReset:
    jmp *g_ptr_midiInReset(%rip)

.globl midiInGetID
midiInGetID:
    jmp *g_ptr_midiInGetID(%rip)

.globl midiInMessage
midiInMessage:
    jmp *g_ptr_midiInMessage(%rip)

.globl midiStreamOpen
midiStreamOpen:
    jmp *g_ptr_midiStreamOpen(%rip)

.globl midiStreamClose
midiStreamClose:
    jmp *g_ptr_midiStreamClose(%rip)

.globl midiStreamProperty
midiStreamProperty:
    jmp *g_ptr_midiStreamProperty(%rip)

.globl midiStreamPosition
midiStreamPosition:
    jmp *g_ptr_midiStreamPosition(%rip)

.globl midiStreamOut
midiStreamOut:
    jmp *g_ptr_midiStreamOut(%rip)

.globl midiStreamPause
midiStreamPause:
    jmp *g_ptr_midiStreamPause(%rip)

.globl midiStreamRestart
midiStreamRestart:
    jmp *g_ptr_midiStreamRestart(%rip)

.globl midiStreamStop
midiStreamStop:
    jmp *g_ptr_midiStreamStop(%rip)

.globl midiConnect
midiConnect:
    jmp *g_ptr_midiConnect(%rip)

.globl midiDisconnect
midiDisconnect:
    jmp *g_ptr_midiDisconnect(%rip)

.globl auxGetNumDevs
auxGetNumDevs:
    jmp *g_ptr_auxGetNumDevs(%rip)

.globl auxGetDevCapsA
auxGetDevCapsA:
    jmp *g_ptr_auxGetDevCapsA(%rip)

.globl auxGetDevCapsW
auxGetDevCapsW:
    jmp *g_ptr_auxGetDevCapsW(%rip)

.globl auxGetVolume
auxGetVolume:
    jmp *g_ptr_auxGetVolume(%rip)

.globl auxSetVolume
auxSetVolume:
    jmp *g_ptr_auxSetVolume(%rip)

.globl auxOutMessage
auxOutMessage:
    jmp *g_ptr_auxOutMessage(%rip)

.globl mixerGetNumDevs
mixerGetNumDevs:
    jmp *g_ptr_mixerGetNumDevs(%rip)

.globl mixerGetDevCapsA
mixerGetDevCapsA:
    jmp *g_ptr_mixerGetDevCapsA(%rip)

.globl mixerGetDevCapsW
mixerGetDevCapsW:
    jmp *g_ptr_mixerGetDevCapsW(%rip)

.globl mixerOpen
mixerOpen:
    jmp *g_ptr_mixerOpen(%rip)

.globl mixerClose
mixerClose:
    jmp *g_ptr_mixerClose(%rip)

.globl mixerMessage
mixerMessage:
    jmp *g_ptr_mixerMessage(%rip)

.globl mixerGetLineInfoA
mixerGetLineInfoA:
    jmp *g_ptr_mixerGetLineInfoA(%rip)

.globl mixerGetLineInfoW
mixerGetLineInfoW:
    jmp *g_ptr_mixerGetLineInfoW(%rip)

.globl mixerGetID
mixerGetID:
    jmp *g_ptr_mixerGetID(%rip)

.globl mixerGetLineControlsA
mixerGetLineControlsA:
    jmp *g_ptr_mixerGetLineControlsA(%rip)

.globl mixerGetLineControlsW
mixerGetLineControlsW:
    jmp *g_ptr_mixerGetLineControlsW(%rip)

.globl mixerGetControlDetailsA
mixerGetControlDetailsA:
    jmp *g_ptr_mixerGetControlDetailsA(%rip)

.globl mixerGetControlDetailsW
mixerGetControlDetailsW:
    jmp *g_ptr_mixerGetControlDetailsW(%rip)

.globl mixerSetControlDetails
mixerSetControlDetails:
    jmp *g_ptr_mixerSetControlDetails(%rip)

.globl joyGetNumDevs
joyGetNumDevs:
    jmp *g_ptr_joyGetNumDevs(%rip)

.globl joyGetDevCapsA
joyGetDevCapsA:
    jmp *g_ptr_joyGetDevCapsA(%rip)

.globl joyGetDevCapsW
joyGetDevCapsW:
    jmp *g_ptr_joyGetDevCapsW(%rip)

.globl joyGetPos
joyGetPos:
    jmp *g_ptr_joyGetPos(%rip)

.globl joyGetPosEx
joyGetPosEx:
    jmp *g_ptr_joyGetPosEx(%rip)

.globl joyGetThreshold
joyGetThreshold:
    jmp *g_ptr_joyGetThreshold(%rip)

.globl joySetThreshold
joySetThreshold:
    jmp *g_ptr_joySetThreshold(%rip)

.globl joyReleaseCapture
joyReleaseCapture:
    jmp *g_ptr_joyReleaseCapture(%rip)

.globl joySetCapture
joySetCapture:
    jmp *g_ptr_joySetCapture(%rip)

.globl joyConfigChanged
joyConfigChanged:
    jmp *g_ptr_joyConfigChanged(%rip)

.globl mciSendCommandA
mciSendCommandA:
    jmp *g_ptr_mciSendCommandA(%rip)

.globl mciSendCommandW
mciSendCommandW:
    jmp *g_ptr_mciSendCommandW(%rip)

.globl mciSendStringA
mciSendStringA:
    jmp *g_ptr_mciSendStringA(%rip)

.globl mciSendStringW
mciSendStringW:
    jmp *g_ptr_mciSendStringW(%rip)

.globl mciGetErrorStringA
mciGetErrorStringA:
    jmp *g_ptr_mciGetErrorStringA(%rip)

.globl mciGetErrorStringW
mciGetErrorStringW:
    jmp *g_ptr_mciGetErrorStringW(%rip)

.globl mciDriverYield
mciDriverYield:
    jmp *g_ptr_mciDriverYield(%rip)

.globl mciDriverNotify
mciDriverNotify:
    jmp *g_ptr_mciDriverNotify(%rip)

.globl mciFreeCommandResource
mciFreeCommandResource:
    jmp *g_ptr_mciFreeCommandResource(%rip)

.globl mciLoadCommandResource
mciLoadCommandResource:
    jmp *g_ptr_mciLoadCommandResource(%rip)

.globl mciGetDeviceIDA
mciGetDeviceIDA:
    jmp *g_ptr_mciGetDeviceIDA(%rip)

.globl mciGetDeviceIDW
mciGetDeviceIDW:
    jmp *g_ptr_mciGetDeviceIDW(%rip)

.globl mciGetDeviceIDFromElementIDA
mciGetDeviceIDFromElementIDA:
    jmp *g_ptr_mciGetDeviceIDFromElementIDA(%rip)

.globl mciGetDeviceIDFromElementIDW
mciGetDeviceIDFromElementIDW:
    jmp *g_ptr_mciGetDeviceIDFromElementIDW(%rip)

.globl mciSetDriverData
mciSetDriverData:
    jmp *g_ptr_mciSetDriverData(%rip)

.globl mciGetDriverData
mciGetDriverData:
    jmp *g_ptr_mciGetDriverData(%rip)

.globl mciGetCreatorTask
mciGetCreatorTask:
    jmp *g_ptr_mciGetCreatorTask(%rip)

.globl mciExecute
mciExecute:
    jmp *g_ptr_mciExecute(%rip)

.globl PlaySoundA
PlaySoundA:
    jmp *g_ptr_PlaySoundA(%rip)

.globl PlaySoundW
PlaySoundW:
    jmp *g_ptr_PlaySoundW(%rip)

.globl sndPlaySoundA
sndPlaySoundA:
    jmp *g_ptr_sndPlaySoundA(%rip)

.globl sndPlaySoundW
sndPlaySoundW:
    jmp *g_ptr_sndPlaySoundW(%rip)

.globl mmioOpenA
mmioOpenA:
    jmp *g_ptr_mmioOpenA(%rip)

.globl mmioOpenW
mmioOpenW:
    jmp *g_ptr_mmioOpenW(%rip)

.globl mmioClose
mmioClose:
    jmp *g_ptr_mmioClose(%rip)

.globl mmioRead
mmioRead:
    jmp *g_ptr_mmioRead(%rip)

.globl mmioWrite
mmioWrite:
    jmp *g_ptr_mmioWrite(%rip)

.globl mmioSeek
mmioSeek:
    jmp *g_ptr_mmioSeek(%rip)

.globl mmioGetInfo
mmioGetInfo:
    jmp *g_ptr_mmioGetInfo(%rip)

.globl mmioSetInfo
mmioSetInfo:
    jmp *g_ptr_mmioSetInfo(%rip)

.globl mmioSetBuffer
mmioSetBuffer:
    jmp *g_ptr_mmioSetBuffer(%rip)

.globl mmioFlush
mmioFlush:
    jmp *g_ptr_mmioFlush(%rip)

.globl mmioAdvance
mmioAdvance:
    jmp *g_ptr_mmioAdvance(%rip)

.globl mmioSendMessage
mmioSendMessage:
    jmp *g_ptr_mmioSendMessage(%rip)

.globl mmioDescend
mmioDescend:
    jmp *g_ptr_mmioDescend(%rip)

.globl mmioAscend
mmioAscend:
    jmp *g_ptr_mmioAscend(%rip)

.globl mmioCreateChunk
mmioCreateChunk:
    jmp *g_ptr_mmioCreateChunk(%rip)

.globl mmioRenameA
mmioRenameA:
    jmp *g_ptr_mmioRenameA(%rip)

.globl mmioRenameW
mmioRenameW:
    jmp *g_ptr_mmioRenameW(%rip)

.globl mmioInstallIOProcA
mmioInstallIOProcA:
    jmp *g_ptr_mmioInstallIOProcA(%rip)

.globl mmioInstallIOProcW
mmioInstallIOProcW:
    jmp *g_ptr_mmioInstallIOProcW(%rip)

.globl mmioStringToFOURCCA
mmioStringToFOURCCA:
    jmp *g_ptr_mmioStringToFOURCCA(%rip)

.globl mmioStringToFOURCCW
mmioStringToFOURCCW:
    jmp *g_ptr_mmioStringToFOURCCW(%rip)

.globl mmsystemGetVersion
mmsystemGetVersion:
    jmp *g_ptr_mmsystemGetVersion(%rip)

.globl mmGetCurrentTask
mmGetCurrentTask:
    jmp *g_ptr_mmGetCurrentTask(%rip)

.globl mmTaskCreate
mmTaskCreate:
    jmp *g_ptr_mmTaskCreate(%rip)

.globl mmTaskBlock
mmTaskBlock:
    jmp *g_ptr_mmTaskBlock(%rip)

.globl mmTaskSignal
mmTaskSignal:
    jmp *g_ptr_mmTaskSignal(%rip)

.globl mmTaskYield
mmTaskYield:
    jmp *g_ptr_mmTaskYield(%rip)

.globl mmTaskGetTaskName
mmTaskGetTaskName:
    jmp *g_ptr_mmTaskGetTaskName(%rip)

.globl DriverCallback
DriverCallback:
    jmp *g_ptr_DriverCallback(%rip)

.globl OpenDriver
OpenDriver:
    jmp *g_ptr_OpenDriver(%rip)

.globl CloseDriver
CloseDriver:
    jmp *g_ptr_CloseDriver(%rip)

.globl SendDriverMessage
SendDriverMessage:
    jmp *g_ptr_SendDriverMessage(%rip)

.globl DrvGetModuleHandle
DrvGetModuleHandle:
    jmp *g_ptr_DrvGetModuleHandle(%rip)

.globl GetDriverModuleHandle
GetDriverModuleHandle:
    jmp *g_ptr_GetDriverModuleHandle(%rip)

.globl DefDriverProc
DefDriverProc:
    jmp *g_ptr_DefDriverProc(%rip)

.bss
.globl g_ptr_timeGetTime
.align 8
g_ptr_timeGetTime:
    .quad 0
.globl g_ptr_timeGetDevCaps
.align 8
g_ptr_timeGetDevCaps:
    .quad 0
.globl g_ptr_timeBeginPeriod
.align 8
g_ptr_timeBeginPeriod:
    .quad 0
.globl g_ptr_timeEndPeriod
.align 8
g_ptr_timeEndPeriod:
    .quad 0
.globl g_ptr_timeGetSystemTime
.align 8
g_ptr_timeGetSystemTime:
    .quad 0
.globl g_ptr_timeSetEvent
.align 8
g_ptr_timeSetEvent:
    .quad 0
.globl g_ptr_timeKillEvent
.align 8
g_ptr_timeKillEvent:
    .quad 0
.globl g_ptr_waveOutGetNumDevs
.align 8
g_ptr_waveOutGetNumDevs:
    .quad 0
.globl g_ptr_waveOutGetDevCapsA
.align 8
g_ptr_waveOutGetDevCapsA:
    .quad 0
.globl g_ptr_waveOutGetDevCapsW
.align 8
g_ptr_waveOutGetDevCapsW:
    .quad 0
.globl g_ptr_waveOutGetVolume
.align 8
g_ptr_waveOutGetVolume:
    .quad 0
.globl g_ptr_waveOutSetVolume
.align 8
g_ptr_waveOutSetVolume:
    .quad 0
.globl g_ptr_waveOutGetErrorTextA
.align 8
g_ptr_waveOutGetErrorTextA:
    .quad 0
.globl g_ptr_waveOutGetErrorTextW
.align 8
g_ptr_waveOutGetErrorTextW:
    .quad 0
.globl g_ptr_waveOutOpen
.align 8
g_ptr_waveOutOpen:
    .quad 0
.globl g_ptr_waveOutClose
.align 8
g_ptr_waveOutClose:
    .quad 0
.globl g_ptr_waveOutPrepareHeader
.align 8
g_ptr_waveOutPrepareHeader:
    .quad 0
.globl g_ptr_waveOutUnprepareHeader
.align 8
g_ptr_waveOutUnprepareHeader:
    .quad 0
.globl g_ptr_waveOutWrite
.align 8
g_ptr_waveOutWrite:
    .quad 0
.globl g_ptr_waveOutPause
.align 8
g_ptr_waveOutPause:
    .quad 0
.globl g_ptr_waveOutRestart
.align 8
g_ptr_waveOutRestart:
    .quad 0
.globl g_ptr_waveOutReset
.align 8
g_ptr_waveOutReset:
    .quad 0
.globl g_ptr_waveOutBreakLoop
.align 8
g_ptr_waveOutBreakLoop:
    .quad 0
.globl g_ptr_waveOutGetPosition
.align 8
g_ptr_waveOutGetPosition:
    .quad 0
.globl g_ptr_waveOutGetPitch
.align 8
g_ptr_waveOutGetPitch:
    .quad 0
.globl g_ptr_waveOutSetPitch
.align 8
g_ptr_waveOutSetPitch:
    .quad 0
.globl g_ptr_waveOutGetPlaybackRate
.align 8
g_ptr_waveOutGetPlaybackRate:
    .quad 0
.globl g_ptr_waveOutSetPlaybackRate
.align 8
g_ptr_waveOutSetPlaybackRate:
    .quad 0
.globl g_ptr_waveOutGetID
.align 8
g_ptr_waveOutGetID:
    .quad 0
.globl g_ptr_waveOutMessage
.align 8
g_ptr_waveOutMessage:
    .quad 0
.globl g_ptr_waveInGetNumDevs
.align 8
g_ptr_waveInGetNumDevs:
    .quad 0
.globl g_ptr_waveInGetDevCapsA
.align 8
g_ptr_waveInGetDevCapsA:
    .quad 0
.globl g_ptr_waveInGetDevCapsW
.align 8
g_ptr_waveInGetDevCapsW:
    .quad 0
.globl g_ptr_waveInGetErrorTextA
.align 8
g_ptr_waveInGetErrorTextA:
    .quad 0
.globl g_ptr_waveInGetErrorTextW
.align 8
g_ptr_waveInGetErrorTextW:
    .quad 0
.globl g_ptr_waveInOpen
.align 8
g_ptr_waveInOpen:
    .quad 0
.globl g_ptr_waveInClose
.align 8
g_ptr_waveInClose:
    .quad 0
.globl g_ptr_waveInPrepareHeader
.align 8
g_ptr_waveInPrepareHeader:
    .quad 0
.globl g_ptr_waveInUnprepareHeader
.align 8
g_ptr_waveInUnprepareHeader:
    .quad 0
.globl g_ptr_waveInAddBuffer
.align 8
g_ptr_waveInAddBuffer:
    .quad 0
.globl g_ptr_waveInStart
.align 8
g_ptr_waveInStart:
    .quad 0
.globl g_ptr_waveInStop
.align 8
g_ptr_waveInStop:
    .quad 0
.globl g_ptr_waveInReset
.align 8
g_ptr_waveInReset:
    .quad 0
.globl g_ptr_waveInGetPosition
.align 8
g_ptr_waveInGetPosition:
    .quad 0
.globl g_ptr_waveInGetID
.align 8
g_ptr_waveInGetID:
    .quad 0
.globl g_ptr_waveInMessage
.align 8
g_ptr_waveInMessage:
    .quad 0
.globl g_ptr_midiOutGetNumDevs
.align 8
g_ptr_midiOutGetNumDevs:
    .quad 0
.globl g_ptr_midiOutGetDevCapsA
.align 8
g_ptr_midiOutGetDevCapsA:
    .quad 0
.globl g_ptr_midiOutGetDevCapsW
.align 8
g_ptr_midiOutGetDevCapsW:
    .quad 0
.globl g_ptr_midiOutGetErrorTextA
.align 8
g_ptr_midiOutGetErrorTextA:
    .quad 0
.globl g_ptr_midiOutGetErrorTextW
.align 8
g_ptr_midiOutGetErrorTextW:
    .quad 0
.globl g_ptr_midiOutOpen
.align 8
g_ptr_midiOutOpen:
    .quad 0
.globl g_ptr_midiOutClose
.align 8
g_ptr_midiOutClose:
    .quad 0
.globl g_ptr_midiOutPrepareHeader
.align 8
g_ptr_midiOutPrepareHeader:
    .quad 0
.globl g_ptr_midiOutUnprepareHeader
.align 8
g_ptr_midiOutUnprepareHeader:
    .quad 0
.globl g_ptr_midiOutShortMsg
.align 8
g_ptr_midiOutShortMsg:
    .quad 0
.globl g_ptr_midiOutLongMsg
.align 8
g_ptr_midiOutLongMsg:
    .quad 0
.globl g_ptr_midiOutReset
.align 8
g_ptr_midiOutReset:
    .quad 0
.globl g_ptr_midiOutCachePatches
.align 8
g_ptr_midiOutCachePatches:
    .quad 0
.globl g_ptr_midiOutCacheDrumPatches
.align 8
g_ptr_midiOutCacheDrumPatches:
    .quad 0
.globl g_ptr_midiOutGetID
.align 8
g_ptr_midiOutGetID:
    .quad 0
.globl g_ptr_midiOutMessage
.align 8
g_ptr_midiOutMessage:
    .quad 0
.globl g_ptr_midiOutGetVolume
.align 8
g_ptr_midiOutGetVolume:
    .quad 0
.globl g_ptr_midiOutSetVolume
.align 8
g_ptr_midiOutSetVolume:
    .quad 0
.globl g_ptr_midiInGetNumDevs
.align 8
g_ptr_midiInGetNumDevs:
    .quad 0
.globl g_ptr_midiInGetDevCapsA
.align 8
g_ptr_midiInGetDevCapsA:
    .quad 0
.globl g_ptr_midiInGetDevCapsW
.align 8
g_ptr_midiInGetDevCapsW:
    .quad 0
.globl g_ptr_midiInGetErrorTextA
.align 8
g_ptr_midiInGetErrorTextA:
    .quad 0
.globl g_ptr_midiInGetErrorTextW
.align 8
g_ptr_midiInGetErrorTextW:
    .quad 0
.globl g_ptr_midiInOpen
.align 8
g_ptr_midiInOpen:
    .quad 0
.globl g_ptr_midiInClose
.align 8
g_ptr_midiInClose:
    .quad 0
.globl g_ptr_midiInPrepareHeader
.align 8
g_ptr_midiInPrepareHeader:
    .quad 0
.globl g_ptr_midiInUnprepareHeader
.align 8
g_ptr_midiInUnprepareHeader:
    .quad 0
.globl g_ptr_midiInAddBuffer
.align 8
g_ptr_midiInAddBuffer:
    .quad 0
.globl g_ptr_midiInStart
.align 8
g_ptr_midiInStart:
    .quad 0
.globl g_ptr_midiInStop
.align 8
g_ptr_midiInStop:
    .quad 0
.globl g_ptr_midiInReset
.align 8
g_ptr_midiInReset:
    .quad 0
.globl g_ptr_midiInGetID
.align 8
g_ptr_midiInGetID:
    .quad 0
.globl g_ptr_midiInMessage
.align 8
g_ptr_midiInMessage:
    .quad 0
.globl g_ptr_midiStreamOpen
.align 8
g_ptr_midiStreamOpen:
    .quad 0
.globl g_ptr_midiStreamClose
.align 8
g_ptr_midiStreamClose:
    .quad 0
.globl g_ptr_midiStreamProperty
.align 8
g_ptr_midiStreamProperty:
    .quad 0
.globl g_ptr_midiStreamPosition
.align 8
g_ptr_midiStreamPosition:
    .quad 0
.globl g_ptr_midiStreamOut
.align 8
g_ptr_midiStreamOut:
    .quad 0
.globl g_ptr_midiStreamPause
.align 8
g_ptr_midiStreamPause:
    .quad 0
.globl g_ptr_midiStreamRestart
.align 8
g_ptr_midiStreamRestart:
    .quad 0
.globl g_ptr_midiStreamStop
.align 8
g_ptr_midiStreamStop:
    .quad 0
.globl g_ptr_midiConnect
.align 8
g_ptr_midiConnect:
    .quad 0
.globl g_ptr_midiDisconnect
.align 8
g_ptr_midiDisconnect:
    .quad 0
.globl g_ptr_auxGetNumDevs
.align 8
g_ptr_auxGetNumDevs:
    .quad 0
.globl g_ptr_auxGetDevCapsA
.align 8
g_ptr_auxGetDevCapsA:
    .quad 0
.globl g_ptr_auxGetDevCapsW
.align 8
g_ptr_auxGetDevCapsW:
    .quad 0
.globl g_ptr_auxGetVolume
.align 8
g_ptr_auxGetVolume:
    .quad 0
.globl g_ptr_auxSetVolume
.align 8
g_ptr_auxSetVolume:
    .quad 0
.globl g_ptr_auxOutMessage
.align 8
g_ptr_auxOutMessage:
    .quad 0
.globl g_ptr_mixerGetNumDevs
.align 8
g_ptr_mixerGetNumDevs:
    .quad 0
.globl g_ptr_mixerGetDevCapsA
.align 8
g_ptr_mixerGetDevCapsA:
    .quad 0
.globl g_ptr_mixerGetDevCapsW
.align 8
g_ptr_mixerGetDevCapsW:
    .quad 0
.globl g_ptr_mixerOpen
.align 8
g_ptr_mixerOpen:
    .quad 0
.globl g_ptr_mixerClose
.align 8
g_ptr_mixerClose:
    .quad 0
.globl g_ptr_mixerMessage
.align 8
g_ptr_mixerMessage:
    .quad 0
.globl g_ptr_mixerGetLineInfoA
.align 8
g_ptr_mixerGetLineInfoA:
    .quad 0
.globl g_ptr_mixerGetLineInfoW
.align 8
g_ptr_mixerGetLineInfoW:
    .quad 0
.globl g_ptr_mixerGetID
.align 8
g_ptr_mixerGetID:
    .quad 0
.globl g_ptr_mixerGetLineControlsA
.align 8
g_ptr_mixerGetLineControlsA:
    .quad 0
.globl g_ptr_mixerGetLineControlsW
.align 8
g_ptr_mixerGetLineControlsW:
    .quad 0
.globl g_ptr_mixerGetControlDetailsA
.align 8
g_ptr_mixerGetControlDetailsA:
    .quad 0
.globl g_ptr_mixerGetControlDetailsW
.align 8
g_ptr_mixerGetControlDetailsW:
    .quad 0
.globl g_ptr_mixerSetControlDetails
.align 8
g_ptr_mixerSetControlDetails:
    .quad 0
.globl g_ptr_joyGetNumDevs
.align 8
g_ptr_joyGetNumDevs:
    .quad 0
.globl g_ptr_joyGetDevCapsA
.align 8
g_ptr_joyGetDevCapsA:
    .quad 0
.globl g_ptr_joyGetDevCapsW
.align 8
g_ptr_joyGetDevCapsW:
    .quad 0
.globl g_ptr_joyGetPos
.align 8
g_ptr_joyGetPos:
    .quad 0
.globl g_ptr_joyGetPosEx
.align 8
g_ptr_joyGetPosEx:
    .quad 0
.globl g_ptr_joyGetThreshold
.align 8
g_ptr_joyGetThreshold:
    .quad 0
.globl g_ptr_joySetThreshold
.align 8
g_ptr_joySetThreshold:
    .quad 0
.globl g_ptr_joyReleaseCapture
.align 8
g_ptr_joyReleaseCapture:
    .quad 0
.globl g_ptr_joySetCapture
.align 8
g_ptr_joySetCapture:
    .quad 0
.globl g_ptr_joyConfigChanged
.align 8
g_ptr_joyConfigChanged:
    .quad 0
.globl g_ptr_mciSendCommandA
.align 8
g_ptr_mciSendCommandA:
    .quad 0
.globl g_ptr_mciSendCommandW
.align 8
g_ptr_mciSendCommandW:
    .quad 0
.globl g_ptr_mciSendStringA
.align 8
g_ptr_mciSendStringA:
    .quad 0
.globl g_ptr_mciSendStringW
.align 8
g_ptr_mciSendStringW:
    .quad 0
.globl g_ptr_mciGetErrorStringA
.align 8
g_ptr_mciGetErrorStringA:
    .quad 0
.globl g_ptr_mciGetErrorStringW
.align 8
g_ptr_mciGetErrorStringW:
    .quad 0
.globl g_ptr_mciDriverYield
.align 8
g_ptr_mciDriverYield:
    .quad 0
.globl g_ptr_mciDriverNotify
.align 8
g_ptr_mciDriverNotify:
    .quad 0
.globl g_ptr_mciFreeCommandResource
.align 8
g_ptr_mciFreeCommandResource:
    .quad 0
.globl g_ptr_mciLoadCommandResource
.align 8
g_ptr_mciLoadCommandResource:
    .quad 0
.globl g_ptr_mciGetDeviceIDA
.align 8
g_ptr_mciGetDeviceIDA:
    .quad 0
.globl g_ptr_mciGetDeviceIDW
.align 8
g_ptr_mciGetDeviceIDW:
    .quad 0
.globl g_ptr_mciGetDeviceIDFromElementIDA
.align 8
g_ptr_mciGetDeviceIDFromElementIDA:
    .quad 0
.globl g_ptr_mciGetDeviceIDFromElementIDW
.align 8
g_ptr_mciGetDeviceIDFromElementIDW:
    .quad 0
.globl g_ptr_mciSetDriverData
.align 8
g_ptr_mciSetDriverData:
    .quad 0
.globl g_ptr_mciGetDriverData
.align 8
g_ptr_mciGetDriverData:
    .quad 0
.globl g_ptr_mciGetCreatorTask
.align 8
g_ptr_mciGetCreatorTask:
    .quad 0
.globl g_ptr_mciExecute
.align 8
g_ptr_mciExecute:
    .quad 0
.globl g_ptr_PlaySoundA
.align 8
g_ptr_PlaySoundA:
    .quad 0
.globl g_ptr_PlaySoundW
.align 8
g_ptr_PlaySoundW:
    .quad 0
.globl g_ptr_sndPlaySoundA
.align 8
g_ptr_sndPlaySoundA:
    .quad 0
.globl g_ptr_sndPlaySoundW
.align 8
g_ptr_sndPlaySoundW:
    .quad 0
.globl g_ptr_mmioOpenA
.align 8
g_ptr_mmioOpenA:
    .quad 0
.globl g_ptr_mmioOpenW
.align 8
g_ptr_mmioOpenW:
    .quad 0
.globl g_ptr_mmioClose
.align 8
g_ptr_mmioClose:
    .quad 0
.globl g_ptr_mmioRead
.align 8
g_ptr_mmioRead:
    .quad 0
.globl g_ptr_mmioWrite
.align 8
g_ptr_mmioWrite:
    .quad 0
.globl g_ptr_mmioSeek
.align 8
g_ptr_mmioSeek:
    .quad 0
.globl g_ptr_mmioGetInfo
.align 8
g_ptr_mmioGetInfo:
    .quad 0
.globl g_ptr_mmioSetInfo
.align 8
g_ptr_mmioSetInfo:
    .quad 0
.globl g_ptr_mmioSetBuffer
.align 8
g_ptr_mmioSetBuffer:
    .quad 0
.globl g_ptr_mmioFlush
.align 8
g_ptr_mmioFlush:
    .quad 0
.globl g_ptr_mmioAdvance
.align 8
g_ptr_mmioAdvance:
    .quad 0
.globl g_ptr_mmioSendMessage
.align 8
g_ptr_mmioSendMessage:
    .quad 0
.globl g_ptr_mmioDescend
.align 8
g_ptr_mmioDescend:
    .quad 0
.globl g_ptr_mmioAscend
.align 8
g_ptr_mmioAscend:
    .quad 0
.globl g_ptr_mmioCreateChunk
.align 8
g_ptr_mmioCreateChunk:
    .quad 0
.globl g_ptr_mmioRenameA
.align 8
g_ptr_mmioRenameA:
    .quad 0
.globl g_ptr_mmioRenameW
.align 8
g_ptr_mmioRenameW:
    .quad 0
.globl g_ptr_mmioInstallIOProcA
.align 8
g_ptr_mmioInstallIOProcA:
    .quad 0
.globl g_ptr_mmioInstallIOProcW
.align 8
g_ptr_mmioInstallIOProcW:
    .quad 0
.globl g_ptr_mmioStringToFOURCCA
.align 8
g_ptr_mmioStringToFOURCCA:
    .quad 0
.globl g_ptr_mmioStringToFOURCCW
.align 8
g_ptr_mmioStringToFOURCCW:
    .quad 0
.globl g_ptr_mmsystemGetVersion
.align 8
g_ptr_mmsystemGetVersion:
    .quad 0
.globl g_ptr_mmGetCurrentTask
.align 8
g_ptr_mmGetCurrentTask:
    .quad 0
.globl g_ptr_mmTaskCreate
.align 8
g_ptr_mmTaskCreate:
    .quad 0
.globl g_ptr_mmTaskBlock
.align 8
g_ptr_mmTaskBlock:
    .quad 0
.globl g_ptr_mmTaskSignal
.align 8
g_ptr_mmTaskSignal:
    .quad 0
.globl g_ptr_mmTaskYield
.align 8
g_ptr_mmTaskYield:
    .quad 0
.globl g_ptr_mmTaskGetTaskName
.align 8
g_ptr_mmTaskGetTaskName:
    .quad 0
.globl g_ptr_DriverCallback
.align 8
g_ptr_DriverCallback:
    .quad 0
.globl g_ptr_OpenDriver
.align 8
g_ptr_OpenDriver:
    .quad 0
.globl g_ptr_CloseDriver
.align 8
g_ptr_CloseDriver:
    .quad 0
.globl g_ptr_SendDriverMessage
.align 8
g_ptr_SendDriverMessage:
    .quad 0
.globl g_ptr_DrvGetModuleHandle
.align 8
g_ptr_DrvGetModuleHandle:
    .quad 0
.globl g_ptr_GetDriverModuleHandle
.align 8
g_ptr_GetDriverModuleHandle:
    .quad 0
.globl g_ptr_DefDriverProc
.align 8
g_ptr_DefDriverProc:
    .quad 0
