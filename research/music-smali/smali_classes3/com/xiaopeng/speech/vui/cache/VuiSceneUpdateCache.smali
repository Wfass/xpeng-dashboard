.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;
.super Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
.source "VuiSceneUpdateCache.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;-><init>()V

    const-string v0, "update_"

    .line 11
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;->mPre:Ljava/lang/String;

    return-void
.end method
