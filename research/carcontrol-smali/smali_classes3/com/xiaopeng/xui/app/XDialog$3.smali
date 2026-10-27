.class Lcom/xiaopeng/xui/app/XDialog$3;
.super Ljava/lang/Object;
.source "XDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$IScreenPositionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialog$3;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenPositionInfo()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialog$3;->this$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getVuiDisplayLocation()I

    move-result v0

    return v0
.end method
