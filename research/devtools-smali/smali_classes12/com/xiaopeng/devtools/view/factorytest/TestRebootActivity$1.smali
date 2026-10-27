.class Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;
.super Ljava/lang/Object;
.source "TestRebootActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->lJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gk:Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;->Gk:Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bY(I)V
    .locals 1

    .line 54
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;->Gk:Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;)Lcom/kyleduo/switchbutton/SwitchButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;->Gk:Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;)Lcom/kyleduo/switchbutton/SwitchButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 59
    :goto_0
    return-void
.end method
