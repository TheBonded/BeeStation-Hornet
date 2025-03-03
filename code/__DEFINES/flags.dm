/*
	These defines are specific to the atom/flags_1 bitmask
*/
#define ALL (~0) //For convenience.
#define NONE 0

//for convenience
#define ENABLE_BITFIELD(variable, flag) (variable |= (flag))
#define DISABLE_BITFIELD(variable, flag) (variable &= ~(flag))
#define CHECK_BITFIELD(variable, flag) (variable & (flag))
#define TOGGLE_BITFIELD(variable, flag) (variable ^= (flag))


//check if all bitflags specified are present
#define CHECK_MULTIPLE_BITFIELDS(flagvar, flags) (((flagvar) & (flags)) == (flags))

GLOBAL_LIST_INIT(bitflags, list(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768))

// for /datum/var/datum_flags
#define DF_USE_TAG		(1<<0)
#define DF_VAR_EDITED	(1<<1)
#define DF_ISPROCESSING (1<<2)

//! ## FLAGS BITMASK
#define CONDUCT_1					(1<<5)		//!  conducts electricity (iron etc.)
#define NODECONSTRUCT_1				(1<<7)		//!  For machines and structures that should not break into parts, eg, holodeck stuff
#define OVERLAY_QUEUED_1			(1<<8)		//!  atom queued to SSoverlay
#define ON_BORDER_1					(1<<9)		//!  item has priority to check when entering or leaving
#define PREVENT_CLICK_UNDER_1		(1<<11)		//! Prevent clicking things below it on the same turf eg. doors/ fulltile windows
#define HOLOGRAM_1					(1<<12)
#define TESLA_IGNORE_1				(1<<13) 	//! TESLA_IGNORE grants immunity from being targeted by tesla-style electricity
#define INITIALIZED_1				(1<<14)  	//! Whether /atom/Initialize() has already run for the object
#define ADMIN_SPAWNED_1			(1<<15) 		//! was this spawned by an admin? used for stat tracking stuff.
#define PREVENT_CONTENTS_EXPLOSION_1 (1<<16)

/// If the thing can reflect light (lasers/energy)
#define RICOCHET_SHINY			(1<<0)
/// If the thing can reflect matter (bullets/bomb shrapnel)
#define RICOCHET_HARD			(1<<1)

//turf-only flags
#define NOJAUNT_1					(1<<0)
#define UNUSED_RESERVATION_TURF_1	(1<<1)
#define CAN_BE_DIRTY_1				(1<<2) 	//! If a turf can be made dirty at roundstart. This is also used in areas.
#define NO_LAVA_GEN_1				(1<<6) 	//! Blocks lava rivers being generated on the turf
#define NO_RUINS_1					(1<<10) //! Blocks ruins spawning on the turf

////////////////Area flags\\\\\\\\\\\\\\
/// If it's a valid territory for cult summoning or the CRAB-17 phone to spawn
#define VALID_TERRITORY				(1<<0)
/// If blobs can spawn there and if it counts towards their score.
#define BLOBS_ALLOWED				(1<<1)
/// If mining tunnel generation is allowed in this area
#define CAVES_ALLOWED				(1<<2)
/// If flora are allowed to spawn in this area randomly through tunnel generation
#define FLORA_ALLOWED				(1<<3)
/// If mobs can be spawned by natural random generation
#define MOB_SPAWN_ALLOWED			(1<<4)
/// If megafauna can be spawned by natural random generation
#define MEGAFAUNA_SPAWN_ALLOWED		(1<<5)
/// Hides area from player Teleport function.
#define HIDDEN_AREA					(1<<6)
/// If false, loading multiple maps with this area type will create multiple instances.
#define UNIQUE_AREA					(1<<7)
/// If people are allowed to suicide in it. Mostly for OOC stuff like minigames
#define BLOCK_SUICIDE				(1<<8)
/// Can the Xenobio management console transverse this area by default?
#define XENOBIOLOGY_COMPATIBLE		(1<<9)

/*
	These defines are used specifically with the atom/pass_flags bitmask
	the atom/checkpass() proc uses them (tables will call movable atom checkpass(PASSTABLE) for example)
*/
//flags for pass_flags
#define PASSTABLE		(1<<0)
#define PASSGLASS		(1<<1)
#define PASSGRILLE		(1<<2)
#define PASSBLOB		(1<<3)
#define PASSMOB			(1<<4)
#define PASSCLOSEDTURF	(1<<5)
#define LETPASSTHROW	(1<<6)

//! ## Movement Types
#define GROUND			(1<<0)
#define FLYING			(1<<1)
#define VENTCRAWLING	(1<<2)
#define FLOATING		(1<<3)
#define UNSTOPPABLE		(1<<4)			//! When moving, will Bump()/Cross()/Uncross() everything, but won't be stopped.

//! ## Fire and Acid stuff, for resistance_flags
#define LAVA_PROOF		(1<<0)
#define FIRE_PROOF		(1<<1) //! 100% immune to fire damage (but not necessarily to lava or heat)
#define FLAMMABLE		(1<<2)
#define ON_FIRE			(1<<3)
#define UNACIDABLE		(1<<4) //! acid can't even appear on it, let alone melt it.
#define ACID_PROOF		(1<<5) //! acid stuck on it doesn't melt it.
#define INDESTRUCTIBLE	(1<<6) //! doesn't take damage
#define FREEZE_PROOF	(1<<7) //! can't be frozen

//tesla_zap
#define TESLA_MACHINE_EXPLOSIVE		(1<<0)
#define TESLA_ALLOW_DUPLICATES		(1<<1)
#define TESLA_OBJ_DAMAGE			(1<<2)
#define TESLA_MOB_DAMAGE			(1<<3)
#define TESLA_MOB_STUN				(1<<4)

#define TESLA_DEFAULT_FLAGS ALL
#define TESLA_ENERGY_PRIMARY_BALL_FLAGS TESLA_MACHINE_EXPLOSIVE | TESLA_OBJ_DAMAGE | TESLA_MOB_DAMAGE | TESLA_MOB_STUN
#define TESLA_ENERGY_MINI_BALL_FLAGS TESLA_OBJ_DAMAGE | TESLA_MOB_DAMAGE | TESLA_MOB_STUN
#define TESLA_FUSION_FLAGS TESLA_OBJ_DAMAGE | TESLA_MOB_DAMAGE | TESLA_MOB_STUN

//EMP protection
#define EMP_PROTECT_SELF (1<<0)
#define EMP_PROTECT_CONTENTS (1<<1)
#define EMP_PROTECT_WIRES (1<<2)

//! ## Mob mobility var flags
#define MOBILITY_MOVE			(1<<0)		//! can move
#define MOBILITY_STAND			(1<<1)		//! can, and is, standing up
#define MOBILITY_PICKUP			(1<<2)		//! can pickup items
#define MOBILITY_USE			(1<<3)		//! can hold and use items
#define MOBILITY_UI				(1<<4)		//! can use interfaces like machinery
#define MOBILITY_STORAGE		(1<<5)		//! can use storage item
#define MOBILITY_PULL			(1<<6)		//! can pull things

#define MOBILITY_FLAGS_DEFAULT (MOBILITY_MOVE | MOBILITY_STAND | MOBILITY_PICKUP | MOBILITY_USE | MOBILITY_UI | MOBILITY_STORAGE | MOBILITY_PULL)
#define MOBILITY_FLAGS_INTERACTION (MOBILITY_USE | MOBILITY_PICKUP | MOBILITY_UI | MOBILITY_STORAGE)

// radiation
#define RAD_PROTECT_CONTENTS (1<<0)
#define RAD_NO_CONTAMINATE (1<<1)

//alternate appearance flags
#define AA_TARGET_SEE_APPEARANCE (1<<0)
#define AA_MATCH_TARGET_OVERLAYS (1<<1)

/// 33554431 (2^24 - 1) is the maximum value our bitflags can reach.
#define MAX_BITFLAG_DIGITS 8

//religious_tool flags
#define RELIGION_TOOL_INVOKE (1<<0)
#define RELIGION_TOOL_SACRIFICE (1<<1)
#define RELIGION_TOOL_SECTSELECT (1<<2)
