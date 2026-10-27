.class Lcom/xiaopeng/xuiservice/XUIServiceApplication$4;
.super Ljava/lang/Object;
.source "XUIServiceApplication.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/scene/SceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/XUIServiceApplication;->initVuiSceneListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$4;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 284
    const-string v0, "XUIService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVuiEvent,event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->dispatchVuiEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
