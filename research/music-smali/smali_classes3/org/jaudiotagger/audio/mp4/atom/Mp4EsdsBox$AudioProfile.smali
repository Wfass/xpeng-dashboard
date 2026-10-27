.class public final enum Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
.super Ljava/lang/Enum;
.source "Mp4EsdsBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum CELP:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HILN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum HVXC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum MAIN_SYNTHESIS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum SCALEABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TTSI:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum TWIN_VQ:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_LC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum T_F_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

.field public static final enum WAVETABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 305
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MAIN"

    const-string v4, "Main"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 306
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v3, 0x2

    const-string v4, "LOW_COMPLEXITY"

    const-string v5, "Low Complexity"

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 307
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v4, 0x3

    const-string v5, "SCALEABLE"

    const-string v6, "Scaleable Sample rate"

    invoke-direct {v0, v5, v3, v4, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 308
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v5, 0x4

    const-string v6, "T_F"

    const-string v7, "T/F"

    invoke-direct {v0, v6, v4, v5, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 309
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v6, 0x5

    const-string v7, "T_F_MAIN"

    const-string v8, "T/F Main"

    invoke-direct {v0, v7, v5, v6, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 310
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v7, 0x6

    const-string v8, "T_F_LC"

    const-string v9, "T/F LC"

    invoke-direct {v0, v8, v6, v7, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 311
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/4 v8, 0x7

    const-string v9, "TWIN_VQ"

    const-string v10, "TWIN"

    invoke-direct {v0, v9, v7, v8, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 312
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v9, "CELP"

    const/16 v10, 0x8

    invoke-direct {v0, v9, v8, v10, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 313
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v9, "HVXC"

    const/16 v11, 0x9

    invoke-direct {v0, v9, v10, v11, v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 314
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/16 v9, 0xa

    const-string v12, "HILN"

    const-string v13, "HILN"

    invoke-direct {v0, v12, v11, v9, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 315
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/16 v12, 0xb

    const-string v13, "TTSI"

    const-string v14, "TTSI"

    invoke-direct {v0, v13, v9, v12, v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 316
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/16 v13, 0xc

    const-string v14, "MAIN_SYNTHESIS"

    const-string v15, "MAIN_SYNTHESIS"

    invoke-direct {v0, v14, v12, v13, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    .line 317
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const-string v14, "WAVETABLE"

    const/16 v15, 0xd

    const-string v12, "WAVETABLE"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/16 v0, 0xd

    .line 303
    new-array v0, v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    sget-object v12, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v12, v0, v1

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->LOW_COMPLEXITY:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->SCALEABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_MAIN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->T_F_LC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TWIN_VQ:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->CELP:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HVXC:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->HILN:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v11

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->TTSI:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->MAIN_SYNTHESIS:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->WAVETABLE:Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    aput-object v1, v0, v13

    sput-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 328
    iput p3, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    .line 329
    iput-object p4, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .line 303
    const-class v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object p0
.end method

.method public static values()[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .locals 1

    .line 303
    sget-object v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->$VALUES:[Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    invoke-virtual {v0}, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 334
    iget v0, p0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;->id:I

    return v0
.end method
