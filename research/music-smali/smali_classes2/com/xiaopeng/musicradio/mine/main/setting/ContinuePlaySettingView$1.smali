.class Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;
.super Ljava/lang/Object;
.source "ContinuePlaySettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;->a:Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;->a:Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->access$000(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/ar;->a(IZ)V

    if-eqz p2, :cond_0

    const-string p1, "open"

    goto :goto_0

    :cond_0
    const-string p1, "close"

    .line 51
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v1, "multi_client_play"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;->a:Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->access$100(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;Z)V

    return-void
.end method
