.class public final LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IMicControl;


# static fields
.field public static final OooO00o:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public OooO0O0:Landroid/hardware/usb/UsbDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0OO:J

.field public final OooO0Oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:[B

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 15
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0Oo:Lkotlin/Lazy;

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[BLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 p2, 0x2

    and-int/2addr p3, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string p3, "0000"

    goto :goto_0

    .line 28
    :cond_0
    move-object p3, v0

    :goto_0
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_1

    goto :goto_1

    .line 29
    :cond_1
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 32
    iget-wide v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0OO:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 33
    iput-wide v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0OO:J

    goto :goto_1

    :cond_3
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO0O0:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 41
    iget-boolean v2, v2, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    if-nez v2, :cond_5

    .line 42
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 43
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 45
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 46
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v1

    goto :goto_1

    .line 51
    :cond_5
    :try_start_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p0

    const/4 p3, 0x0

    aget-byte p3, p1, p3

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    aget-byte p1, p1, p2

    invoke-virtual {p0, p3, v0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0O0(BBB)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_1
    return-object p3

    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v1

    throw p0
.end method

.method public static OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[B[BI)[B
    .locals 6

    const/4 p2, 0x2

    and-int/2addr p3, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    sget-object p3, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o:[B

    goto :goto_0

    .line 3
    :cond_0
    move-object p3, v0

    :goto_0
    iget-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    iget-wide v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0OO:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 8
    iput-wide v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0OO:J

    goto :goto_1

    :cond_3
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO0O0:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 16
    iget-boolean v2, v2, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    if-nez v2, :cond_5

    .line 17
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 18
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 19
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 20
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 21
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    goto :goto_1

    .line 26
    :cond_5
    :try_start_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p0

    const/4 p3, 0x0

    aget-byte p3, p1, p3

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    aget-byte p1, p1, p2

    invoke-virtual {p0, p3, v0, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(BBB)[B

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_1
    return-object p3

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final OooO00o([BZ)I
    .locals 4

    .line 53
    invoke-virtual {p0, p1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 54
    :cond_0
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "result-size"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicInfo"

    invoke-virtual {v1, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return v0

    .line 57
    :cond_1
    const/4 v1, 0x1

    aget-byte p1, p1, v1

    if-eqz p2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return p1
.end method

.method public final OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    return-object v0
.end method

.method public final OooO00o([B)[B
    .locals 5

    .line 58
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 59
    :cond_0
    array-length v0, p1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    return-object v1

    .line 61
    :cond_1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO0O0:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 63
    iget-boolean v2, v2, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO:Z

    if-nez v2, :cond_2

    .line 64
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    .line 65
    iget-object v3, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 66
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO0OO(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iput-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    .line 68
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-object v1

    .line 75
    :cond_2
    :try_start_1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/4 v4, 0x2

    aget-byte p1, p1, v4

    invoke-virtual {v1, v2, v3, p1}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(BBB)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    throw p1
.end method

.method public OooO0O0()[B
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[B[BI)[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x9t
        0x0t
        0x0t
    .end array-data
.end method

.method public getAudioEffect()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    goto :goto_1

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    :pswitch_7
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        -0x14t
        0x2t
        0x0t
    .end array-data
.end method

.method public getBaseStatus(I)I
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    const/4 v2, 0x1

    aget-byte v3, v0, v2

    .line 11
    const/4 v4, 0x2

    aget-byte v0, v0, v4

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_1

    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    :cond_3
    if-ne v3, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    if-eq v3, v2, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_0

    :cond_6
    goto :goto_1

    :cond_7
    :goto_0
    move v1, v2

    :goto_1
    return v1

    nop

    :array_0
    .array-data 1
        -0x14t
        0x0t
        0x0t
    .end array-data
.end method

.method public getMicBattery(I)D
    .locals 12

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 10
    :cond_0
    const/4 v3, 0x1

    aget-byte v4, v0, v3

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    int-to-double v6, v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    .line 11
    aget-byte v0, v0, v5

    mul-int/2addr v0, v5

    int-to-double v10, v0

    div-double v8, v10, v8

    if-eq p1, v3, :cond_2

    if-eq p1, v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v8

    goto :goto_0

    :cond_2
    move-wide v1, v6

    :goto_0
    return-wide v1

    nop

    :array_0
    .array-data 1
        -0x10t
        0x2t
        0x0t
    .end array-data
.end method

.method public getMicBatteryPercentage(I)D
    .locals 12

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0O0;

    .line 2
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 3
    nop

    .line 4
    nop

    .line 5
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    const/4 v5, 0x1

    aget-byte v6, v0, v5

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    int-to-double v8, v6

    div-double/2addr v8, v3

    .line 12
    aget-byte v0, v0, v7

    mul-int/2addr v0, v7

    int-to-double v10, v0

    div-double/2addr v10, v3

    if-eq p1, v5, :cond_2

    if-eq p1, v7, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v10

    goto :goto_0

    :cond_2
    move-wide v1, v8

    .line 13
    :goto_0
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 14
    array-length p1, p1

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    move v5, v0

    :goto_1
    add-int/lit8 v6, v5, 0x1

    .line 15
    sget-object v7, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    .line 16
    aget-wide v7, v7, v5

    cmpl-double v7, v1, v7

    if-lez v7, :cond_3

    .line 17
    move v0, v5

    goto :goto_2

    .line 16
    :cond_3
    if-ne v5, p1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    move v5, v6

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO0O0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 18
    aget p1, p1, v0

    int-to-double v0, p1

    div-double/2addr v0, v3

    return-wide v0

    :array_0
    .array-data 1
        -0x10t
        0x2t
        0x0t
    .end array-data
.end method

.method public getMicEQ1()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x20t
        0x0t
    .end array-data
.end method

.method public getMicEQ2()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x21t
        0x0t
    .end array-data
.end method

.method public getMicEQ3()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x22t
        0x0t
    .end array-data
.end method

.method public getMicEQ4()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x23t
        0x0t
    .end array-data
.end method

.method public getMicEQ5()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x24t
        0x0t
    .end array-data
.end method

.method public getMicEQ6()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x25t
        0x0t
    .end array-data
.end method

.method public getMicEQ7()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x26t
        0x0t
    .end array-data
.end method

.method public getMicEQ8()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x27t
        0x0t
    .end array-data
.end method

.method public getMicEQ9()I
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        -0x14t
        0x28t
        0x0t
    .end array-data
.end method

.method public getMicShiftFrequency()I
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const-string v4, "getMicShiftFrequency: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MicInfo"

    invoke-virtual {v2, v4, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    aget-byte v0, v0, v1

    return v0

    :array_0
    .array-data 1
        -0x11t
        0x13t
        0x0t
    .end array-data
.end method

.method public getMicVolumeHW(I)I
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2
    nop

    .line 3
    nop

    .line 4
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    const/4 v2, 0x1

    aget-byte v3, v0, v2

    .line 11
    const/4 v4, 0x2

    aget-byte v0, v0, v4

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    return v0

    :array_0
    .array-data 1
        -0x10t
        0x3t
        0x0t
    .end array-data
.end method

.method public setAudioEffect(I)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x8

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x6

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x5

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x4

    goto :goto_1

    .line 1
    :pswitch_5
    move p1, v1

    goto :goto_1

    :pswitch_6
    move p1, v0

    goto :goto_1

    :goto_0
    :pswitch_7
    move p1, v2

    :goto_1
    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x14

    aput-byte v4, v1, v3

    .line 2
    aput-byte v2, v1, v2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMicEQ1(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x10

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ2(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x11

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ3(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x12

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ4(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x13

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ5(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x14

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ6(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x15

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ7(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x16

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ8(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x17

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicEQ9(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [B

    const/16 v2, -0x14

    aput-byte v2, v1, v0

    const/16 v0, 0x18

    .line 2
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    int-to-byte p1, p1

    const/4 v0, 0x2

    .line 3
    aput-byte p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public setMicShiftFrequency(I)I
    .locals 4

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x14

    aput-byte v3, v0, v2

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v0, v2

    .line 2
    invoke-virtual {p0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMicShiftFrequency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 0:\u6210\u529f 1:\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicInfo"

    invoke-virtual {v0, v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    aget-byte p1, p1, v1

    return p1
.end method

.method public setMicSwitch(I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    .line 2
    const/4 v1, 0x1

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    .line 3
    const/4 v2, 0x2

    aput-byte p1, v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    move-result p1

    return p1
.end method
