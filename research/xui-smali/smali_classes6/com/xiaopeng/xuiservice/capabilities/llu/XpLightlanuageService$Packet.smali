.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Packet"
.end annotation


# instance fields
.field public data:[Ljava/lang/Integer;

.field public loop:I

.field public period:I

.field public retain:I

.field public sdata:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
