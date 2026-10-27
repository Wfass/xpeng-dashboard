.class public Lcom/loostone/libtuning/channel/skyworth/old/record/NodeAudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/channel/skyworth/old/record/IAudioRecord;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NodeAudioRecord"

    .line 2
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/old/record/NodeAudioRecord;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(IIII)V
    .locals 2

    .line 1
    sget-object p4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "NodeAudioRecord"

    const-string v1, "create"

    invoke-virtual {p4, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p4, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {p4, p1, p2, p3}, Lcom/loostone/libbottom/util/JniUtil;->recordCreate(III)I

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "NodeAudioRecord"

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {v0}, Lcom/loostone/libbottom/util/JniUtil;->recordRelease()I

    return-void
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "buffer"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loostone/libbottom/util/JniUtil;->recordRead([BII)I

    move-result p1

    return p1
.end method

.method public read2Cache()V
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libbottom/util/JniUtil;->OooO00o:Lcom/loostone/libbottom/util/JniUtil;

    invoke-virtual {v0}, Lcom/loostone/libbottom/util/JniUtil;->recordRead2Cache()I

    return-void
.end method
