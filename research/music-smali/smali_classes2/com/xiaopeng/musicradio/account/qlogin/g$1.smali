.class final Lcom/xiaopeng/musicradio/account/qlogin/g$1;
.super Ljava/lang/Object;
.source "QLoginFlowManager.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/account/qlogin/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->c:Z

    const/16 v0, 0x2711

    .line 113
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->c:Z

    iget-object v2, p0, Lcom/xiaopeng/musicradio/account/qlogin/g$1;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;ZLjava/lang/String;)V

    return-void
.end method
