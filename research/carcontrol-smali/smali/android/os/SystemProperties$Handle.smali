.class public final Landroid/os/SystemProperties$Handle;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handle"
.end annotation


# instance fields
.field private final mNativeHandle:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-wide p1, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    return-void
.end method

.method synthetic constructor <init>(JLandroid/os/SystemProperties$1;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2}, Landroid/os/SystemProperties$Handle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 2

    .line 357
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->access$100(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Z)Z
    .locals 2

    .line 378
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->access$400(JZ)Z

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 364
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/os/SystemProperties;->access$200(JI)I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .locals 2

    .line 371
    iget-wide v0, p0, Landroid/os/SystemProperties$Handle;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/SystemProperties;->access$300(JJ)J

    move-result-wide p1

    return-wide p1
.end method
