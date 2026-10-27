.class public Laod;
.super Ljava/lang/Object;
.source "CounterFactory.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laod$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laod$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Laod;-><init>()V

    return-void
.end method

.method public static a()Laod;
    .locals 1

    .line 23
    invoke-static {}, Laod$a;->a()Laod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createDailyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .locals 3

    .line 33
    new-instance v0, Laoe;

    const-wide/32 v1, 0x5265c00

    invoke-direct {v0, p1, p2, v1, v2}, Laoe;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-object v0
.end method

.method public createHourlyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .locals 3

    .line 28
    new-instance v0, Laoe;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, p1, p2, v1, v2}, Laoe;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-object v0
.end method
