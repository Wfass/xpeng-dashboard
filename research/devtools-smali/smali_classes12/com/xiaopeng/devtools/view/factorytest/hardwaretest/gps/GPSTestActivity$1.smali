.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;
.super Ljava/lang/Object;
.source "GPSTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->bZ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JU:Ljava/lang/String;

.field final synthetic JV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;->JV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;->JU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;->JV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSTestActivity$1;->JU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method
