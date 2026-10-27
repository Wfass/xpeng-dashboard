.class public Lcom/xiaopeng/musicradio/utils/ca;
.super Ljava/lang/Object;
.source "XDialogReference.java"


# instance fields
.field private a:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ca;->a:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ca;->a:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ca;->a:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/ca;->a:Lcom/xiaopeng/xui/app/XDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
