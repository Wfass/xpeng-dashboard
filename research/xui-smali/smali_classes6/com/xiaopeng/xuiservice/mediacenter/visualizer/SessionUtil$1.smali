.class Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil$1;
.super Ljava/lang/Object;
.source "SessionUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/xiaopeng/audio/xpAudioSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/xiaopeng/audio/xpAudioSessionInfo;Lcom/xiaopeng/audio/xpAudioSessionInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/xiaopeng/audio/xpAudioSessionInfo;
    .param p2, "b"    # Lcom/xiaopeng/audio/xpAudioSessionInfo;

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xiaopeng/audio/xpAudioSessionInfo;->getStartTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    check-cast p2, Lcom/xiaopeng/audio/xpAudioSessionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SessionUtil$1;->compare(Lcom/xiaopeng/audio/xpAudioSessionInfo;Lcom/xiaopeng/audio/xpAudioSessionInfo;)I

    move-result p1

    return p1
.end method
