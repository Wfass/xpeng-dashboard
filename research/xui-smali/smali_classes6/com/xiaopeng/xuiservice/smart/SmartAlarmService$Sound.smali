.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sound"
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0x7


# instance fields
.field public delay:I

.field public dependence:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Dependence;

.field public hasDownVolume:Z

.field public hasSimpleMute:Z

.field public leftSide:Z

.field public loop:I

.field public position:I

.field public priority:I

.field public rightSide:Z

.field public source:Ljava/lang/String;

.field public value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
