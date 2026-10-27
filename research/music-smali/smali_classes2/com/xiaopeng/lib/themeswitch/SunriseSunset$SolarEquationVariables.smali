.class Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;
.super Ljava/lang/Object;
.source "SunriseSunset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/themeswitch/SunriseSunset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SolarEquationVariables"
.end annotation


# instance fields
.field final delta:D

.field final jtransit:D

.field final lambda:D

.field final m:D

.field final n:D


# direct methods
.method private constructor <init>(DDDDD)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->n:D

    .line 86
    iput-wide p3, p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->m:D

    .line 87
    iput-wide p5, p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->lambda:D

    .line 88
    iput-wide p7, p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->jtransit:D

    .line 89
    iput-wide p9, p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->delta:D

    return-void
.end method

.method synthetic constructor <init>(DDDDDLcom/xiaopeng/lib/themeswitch/SunriseSunset$1;)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p10}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;-><init>(DDDDD)V

    return-void
.end method
