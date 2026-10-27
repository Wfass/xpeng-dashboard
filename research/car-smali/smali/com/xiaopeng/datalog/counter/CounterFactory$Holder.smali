.class final Lcom/xiaopeng/datalog/counter/CounterFactory$Holder;
.super Ljava/lang/Object;
.source "CounterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/counter/CounterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/datalog/counter/CounterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/xiaopeng/datalog/counter/CounterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/counter/CounterFactory;-><init>(Lcom/xiaopeng/datalog/counter/CounterFactory$1;)V

    sput-object v0, Lcom/xiaopeng/datalog/counter/CounterFactory$Holder;->INSTANCE:Lcom/xiaopeng/datalog/counter/CounterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/datalog/counter/CounterFactory;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/datalog/counter/CounterFactory$Holder;->INSTANCE:Lcom/xiaopeng/datalog/counter/CounterFactory;

    return-object v0
.end method
