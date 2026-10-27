.class public Lcom/xiaopeng/musicradio/model/dui/i;
.super Lbwb;
.source "DuiSpeechModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/dui/i$a;
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lbwb;-><init>()V

    const-string v0, "DuiSpeechModel"

    const-string v1, "DuiSpeechModel: ====="

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    new-instance v2, Lcom/xiaopeng/musicradio/model/dui/i$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/model/dui/i$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/i;)V

    invoke-virtual {v0, v1, v2}, Lbus;->a(Landroid/content/Context;Lbuf$a;)V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/dui/i;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/model/dui/i$a;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/i;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/model/dui/i;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/i;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/dui/i;->b:Z

    return p1
.end method


# virtual methods
.method public a(Lbwl;)V
    .locals 1

    const-string p1, "DuiSpeechModel"

    const-string v0, "onDialogEnd: ====="

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lbwo;)V
    .locals 1

    const-string p1, "DuiSpeechModel"

    const-string v0, "onDialogStart: ======"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/dui/i;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->isVuiFeatureDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
