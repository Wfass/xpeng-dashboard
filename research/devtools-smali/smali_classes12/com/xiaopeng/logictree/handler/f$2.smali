.class Lcom/xiaopeng/logictree/handler/f$2;
.super Ljava/lang/Object;
.source "InterActive.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/a/a;


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

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f$2;->Yw:Lcom/xiaopeng/logictree/handler/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .line 51
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    .line 52
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f$2;->Yw:Lcom/xiaopeng/logictree/handler/f;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/logictree/handler/f;->a(Lcom/xiaopeng/logictree/handler/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
