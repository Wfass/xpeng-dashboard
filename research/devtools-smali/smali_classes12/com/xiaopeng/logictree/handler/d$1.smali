.class Lcom/xiaopeng/logictree/handler/d$1;
.super Ljava/lang/Object;
.source "DisplayHandleResult.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ym:Lcom/xiaopeng/logictree/handler/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/d;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/d$1;->Ym:Lcom/xiaopeng/logictree/handler/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/d$1;->Ym:Lcom/xiaopeng/logictree/handler/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/logictree/handler/d;->a(Lcom/xiaopeng/logictree/handler/d;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/d$1;->Ym:Lcom/xiaopeng/logictree/handler/d;

    invoke-static {p2, p1}, Lcom/xiaopeng/logictree/handler/d;->a(Lcom/xiaopeng/logictree/handler/d;Ljava/lang/String;)V

    .line 51
    return-void
.end method
