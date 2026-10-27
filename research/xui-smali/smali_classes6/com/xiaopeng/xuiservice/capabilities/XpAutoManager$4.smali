.class Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;
.super Ljava/lang/Object;
.source "XpAutoManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->checkConfiguration()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "i"    # I

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v1, "save onSuccess "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)V

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    .line 268
    return-void
.end method
