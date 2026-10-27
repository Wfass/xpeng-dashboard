.class public Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;
.super Ljava/lang/Object;
.source "MakeupLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorTemperature"
.end annotation


# instance fields
.field public rgb:I

.field public white:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->rgb:I

    .line 85
    iput p2, p0, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;->white:I

    return-void
.end method
