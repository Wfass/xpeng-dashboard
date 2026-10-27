.class Lcom/xiaopeng/logictree/handler/f$1;
.super Ljava/lang/Object;
.source "InterActive.java"

# interfaces
.implements Lcom/xiaopeng/logictree/handler/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yw:Lcom/xiaopeng/logictree/handler/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/f;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f$1;->Yw:Lcom/xiaopeng/logictree/handler/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->dT(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f$1;->Yw:Lcom/xiaopeng/logictree/handler/f;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/f;->a(Lcom/xiaopeng/logictree/handler/f;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f$1;->Yw:Lcom/xiaopeng/logictree/handler/f;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/f;->a(Lcom/xiaopeng/logictree/handler/f;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f$1;->Yw:Lcom/xiaopeng/logictree/handler/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/logictree/handler/f;->a(Lcom/xiaopeng/logictree/handler/f;Lcom/xiaopeng/xui/app/c;)Lcom/xiaopeng/xui/app/c;

    .line 40
    :cond_0
    return-void
.end method
