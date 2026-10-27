.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1$1;
.super Ljava/lang/Object;
.source "ConditionLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1$1;->this$1:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->access$000(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 60
    return-void
.end method
