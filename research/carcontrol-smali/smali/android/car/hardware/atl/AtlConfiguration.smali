.class public Landroid/car/hardware/atl/AtlConfiguration;
.super Ljava/lang/Object;
.source "AtlConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/atl/AtlConfiguration$Builder;,
        Landroid/car/hardware/atl/AtlConfiguration$ColorType;
    }
.end annotation


# static fields
.field public static final INVALID_COLOR:I = 0xff

.field public static final USE_PREDEFINED_COLOR:I = 0x0

.field public static final USE_RGB_COLOR:I = 0x1


# instance fields
.field private mData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/car/hardware/atl/AtlConfiguration;->mData:[B

    return-void
.end method

.method synthetic constructor <init>([BLandroid/car/hardware/atl/AtlConfiguration$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/car/hardware/atl/AtlConfiguration;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/car/hardware/atl/AtlConfiguration;->mData:[B

    return-object v0
.end method
