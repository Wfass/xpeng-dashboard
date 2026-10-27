.class public Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IAudioTempoProcess;


# static fields
.field private static final TAG:Ljava/lang/String; = "SampleTempo"


# instance fields
.field private brightness:I

.field private callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

.field private colorChange:Z

.field private colorIndex:I

.field private colors:[I

.field private final command:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

.field private shineFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "000"

    const-string v1, ""

    .line 12
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    const-string v3, "version"

    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%03d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v6, 0x47

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%03d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(format, *args)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    const-string v8, "sign"

    .line 83
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    const-string v8, "type"

    .line 85
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    invoke-direct {v7}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;-><init>()V

    .line 87
    iput-object v3, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 88
    iput-object v4, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 89
    iput-object v6, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 90
    iput v2, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0Oo:I

    .line 91
    iput v5, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o0:I

    .line 92
    iput-object v0, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0o:Ljava/lang/String;

    .line 93
    iput-object v1, v7, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;->OooO0oO:Ljava/lang/String;

    .line 94
    iput-object v7, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->command:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    return-void
.end method

.method public static synthetic access$000(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->shineFlag:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->shineFlag:Z

    return p1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    .line 2
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 3
    const/16 v1, 0x47

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    .line 5
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    .line 6
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    const-string v1, "3"

    .line 7
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    .line 9
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->shineFlag:Z

    .line 11
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    .line 14
    :cond_0
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OoooooO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public getBrightness()I
    .locals 7

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->command:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    const-string v2, "command"

    .line 2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;

    move-result-object v0

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/z1/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xe

    if-lt v1, v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    new-array v1, v2, [I

    const/4 v5, 0x4

    .line 502
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v3

    const/16 v5, 0xd

    .line 503
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 504
    array-length v0, v1

    if-ne v0, v2, :cond_3

    .line 505
    aget v0, v1, v3

    iput v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->brightness:I

    .line 506
    aget v0, v1, v4

    if-ne v0, v4, :cond_2

    move v3, v4

    nop

    :cond_2
    iput-boolean v3, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorChange:Z

    .line 508
    :cond_3
    iget v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->brightness:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 3
    iput v1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    .line 5
    :cond_0
    iget v1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    aget v0, v0, v1

    return v0

    :cond_1
    return v1
.end method

.method public getColorChangeOrNot()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorChange:Z

    .line 3
    iget v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    .line 4
    iget-object v3, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 5
    iput v1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colorIndex:I

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public init()V
    .locals 2

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    .line 2
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 3
    const/16 v1, 0x47

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    .line 5
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    .line 6
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    const-string v1, "1"

    .line 7
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    .line 9
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    .line 10
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0O;->OoooooO()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public initSong()V
    .locals 2

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;-><init>()V

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;

    .line 2
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0o;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 3
    const/16 v1, 0x47

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO0O0(I)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;->OooO0O0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;

    .line 5
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0OO;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;

    .line 6
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO0O0;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    const-string v1, "2"

    .line 7
    invoke-virtual {v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0$OooO00o;->OooO00o()LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;

    move-result-object v0

    .line 9
    sget-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;

    invoke-virtual {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO0O0/o0O0o000;->OooO0O0(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO0O0;)V

    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    return-void
.end method

.method public setListener(Lcom/loostone/libtuning/inf/extern/ITempoCallBack;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->callBack:Lcom/loostone/libtuning/inf/extern/ITempoCallBack;

    .line 2
    iget-boolean v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->shineFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->shineFlag:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;

    invoke-direct {v1, p0, p1}, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess$1;-><init>(Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;Lcom/loostone/libtuning/inf/extern/ITempoCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public setMode(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 1
    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    .line 2
    sget-object v1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP1:[[I

    rem-int/lit8 p2, p2, 0x1f

    aget-object p2, v1, p2

    invoke-static {p2}, Lcom/loostone/libtuning/channel/byd/light/ColorUtil;->getColor([I)I

    move-result p2

    aput p2, p1, v0

    goto :goto_3

    .line 3
    :cond_0
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP4:[[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    .line 4
    :goto_0
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP4:[[I

    array-length p2, p1

    if-ge v0, p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/loostone/libtuning/channel/byd/light/ColorUtil;->getColor([I)I

    move-result p1

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP3:[[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    .line 7
    :goto_1
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP3:[[I

    array-length p2, p1

    if-ge v0, p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/loostone/libtuning/channel/byd/light/ColorUtil;->getColor([I)I

    move-result p1

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP2:[[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    .line 10
    :goto_2
    sget-object p1, Lcom/loostone/libtuning/channel/byd/light/ColorDefine;->COLOR_GROUP2:[[I

    array-length p2, p1

    if-ge v0, p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/loostone/libtuning/channel/byd/light/SampleTempoProcess;->colors:[I

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/loostone/libtuning/channel/byd/light/ColorUtil;->getColor([I)I

    move-result p1

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
