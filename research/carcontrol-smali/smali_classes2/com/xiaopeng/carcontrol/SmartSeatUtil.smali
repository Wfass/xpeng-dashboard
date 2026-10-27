.class public Lcom/xiaopeng/carcontrol/SmartSeatUtil;
.super Ljava/lang/Object;
.source "SmartSeatUtil.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SmartSeatUtil"

.field private static pos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->pos:[I

    const-string v0, "native-lib"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->TAG:Ljava/lang/String;

    const-string v1, "SmartSeatUtil load so successfully!"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getPosFromHW(III[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "g",
            "h",
            "w",
            "pos"
        }
    .end annotation
.end method

.method public getPosition(III)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gender",
            "height",
            "weight"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->stringFromJNI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->pos:[I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->getPosFromHW(III[I)V

    .line 28
    sget-object p1, Lcom/xiaopeng/carcontrol/SmartSeatUtil;->pos:[I

    return-object p1
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
