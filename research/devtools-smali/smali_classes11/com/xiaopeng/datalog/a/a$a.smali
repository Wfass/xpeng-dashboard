.class final Lcom/xiaopeng/datalog/a/a$a;
.super Ljava/lang/Object;
.source "CounterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final qj:Lcom/xiaopeng/datalog/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/xiaopeng/datalog/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/a/a;-><init>(Lcom/xiaopeng/datalog/a/a$1;)V

    sput-object v0, Lcom/xiaopeng/datalog/a/a$a;->qj:Lcom/xiaopeng/datalog/a/a;

    return-void
.end method

.method static synthetic eT()Lcom/xiaopeng/datalog/a/a;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/datalog/a/a$a;->qj:Lcom/xiaopeng/datalog/a/a;

    return-object v0
.end method
