.class public Lcom/xiaopeng/datalog/counter/CounterFactory;
.super Ljava/lang/Object;
.source "CounterFactory.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/counter/CounterFactory$Holder;
    }
.end annotation


# static fields
.field private static final ONE_DAY_MILLS:J = 0x5265c00L

.field private static final ONE_HOUR_MILLS:J = 0x36ee80L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/counter/CounterFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/datalog/counter/CounterFactory$1;

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/datalog/counter/CounterFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/datalog/counter/CounterFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/datalog/counter/CounterFactory$Holder;->access$100()Lcom/xiaopeng/datalog/counter/CounterFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createDailyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/xiaopeng/datalog/counter/CounterImpl;

    const-wide/32 v1, 0x5265c00

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-object v0
.end method

.method public createHourlyCounter(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/xiaopeng/datalog/counter/CounterImpl;

    const-wide/32 v1, 0x36ee80

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    return-object v0
.end method
