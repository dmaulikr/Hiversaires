#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

#import "DozenalViewController_templates.h"

AVAudioPlayer *player;

@implementation DozenalViewController (Audio)

// ====================
// Movement
// ====================

-(void)audioFootLeft
{
	NSLog(@"[audioFootLeft]");
	
	[self  soundPlayer:@"test"];
		
}

-(void)audioFootRight
{
	NSLog(@"[audioFootRight]");
}

-(void)audioTurn
{
	NSLog(@"[audioTurn]");
}

-(void)audioReturn
{
	NSLog(@"[audioReturn]");
}

-(void)audioCollide
{
	NSLog(@"[audioCollide]");
}

// ====================
// Energy
// ====================

-(void)audioEnergyInit
{
	NSLog(@"[audioEnergyInit]");
}

-(void)audioEnergyActive
{
	NSLog(@"[audioEnergyActive]");
}

-(void)audioEnergyInactive
{
	NSLog(@"[audioEnergyInactive]");
}

-(void)audioEnergyStack
{
	NSLog(@"[audioEnergyStack]");
}

// ====================
// Seals
// ====================

-(void)audioSealInit
{
	NSLog(@"[audioSealInit]");
}

-(void)audioSealActive
{
	NSLog(@"[audioSealActive]");
}

-(void)audioSealInactive
{
	NSLog(@"[audioSealInactive]");
}

-(void)audioSealStack
{
	NSLog(@"[audioSealStack]");
}

// ====================
// Collectibles
// ====================

-(void)audioCollectibleInit
{
	NSLog(@"[audioCollectibleInit]");
}

// ====================
// Clock
// ====================

-(void)audioClockInit
{
	NSLog(@"[audioClockInit]");
}

-(void)audioClockActive
{
	NSLog(@"[audioClockActive]");
}

-(void)audioClockInactive
{
	NSLog(@"[audioClockInactive]");
}

-(void)audioClockTurn
{
	NSLog(@"[audioClockTurn]");
}

// ====================
// Terminal
// ====================

-(void)audioTerminalInit
{
	NSLog(@"[audioTerminalInit]");
}

-(void)audioTerminalActive
{
	NSLog(@"[audioTerminalActive]");
}

-(void)audioTerminalInactive
{
	NSLog(@"[audioTerminalInactive]");
}

// ====================
// Doors
// ====================

-(void)audioDoorInit
{
	NSLog(@"[audioDoorInit]");
}

-(void)audioDoorActive
{
	NSLog(@"[audioDoorActive]");
}

-(void)audioDoorInactive
{
	NSLog(@"[audioDoorInactive]");
}

-(void)audioDoorEnter
{
	NSLog(@"[audioDoorEnter]");
}

// ====================
// Doors
// ====================

-(void)audioMiscActive
{
	NSLog(@"[audioMiscActive]");
}


-(void)audioMiscInactive
{
	NSLog(@"[audioMiscInactive]");
}


// ====================
// Ambient
// ====================

-(void)ambientForest
{
	NSLog(@"[ambientForest]");
}

-(void)ambientStudio
{
	NSLog(@"[ambientStudio]");
}

-(void)ambientCircular
{
	NSLog(@"[ambientCircular]");
}

-(void)ambientStones
{
	NSLog(@"[ambientStones]");
}

-(void)ambientMetamondst
{
	NSLog(@"[ambientMetamondst]");
}

-(void)ambientAntechannel
{
	NSLog(@"[ambientAntechannel]");
}

-(void)ambientCapsule
{
	NSLog(@"[ambientCapsule]");
}

-(void)ambientNether
{
	NSLog(@"[ambientNether]");
}

-(void)ambientEntente
{
	NSLog(@"[ambientEntente]");
}

-(void)ambientRainre
{
	NSLog(@"[ambientRainre]");
}

-(void)soundPlayer: (NSString *)filename;
{
	NSString* resourcePath = [[NSBundle mainBundle] resourcePath];
	resourcePath = [resourcePath stringByAppendingString: [NSString stringWithFormat:@"/%@.mp3", filename] ];
	NSError* err;
	player = [[AVAudioPlayer alloc] initWithContentsOfURL: [NSURL fileURLWithPath:resourcePath] error:&err];
	[player play];
}


@end