.class Lcom/xiaopeng/devtools/presenter/h/d$1;
.super Ljava/lang/Object;
.source "ScreenFirUpdatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/h/d;->ks()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zV:Lcom/xiaopeng/devtools/presenter/h/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/h/d;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/d$1;->zV:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/xiaopeng/devtools/presenter/h/d;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPeng_AP.bin "

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->F(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    invoke-static {}, Lcom/xiaopeng/devtools/presenter/h/d;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1 "

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->F(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    return-void
.end method
