.class Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$6;
.super Ljava/lang/Object;
.source "CanTestActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$6;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$6;->SZ:Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 172
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 177
    return-void
.end method
