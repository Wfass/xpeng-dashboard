.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->lJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jl()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x155cc

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    .line 112
    return-void
.end method
