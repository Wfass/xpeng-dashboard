.class Lcom/xiaopeng/datalog/b/b$a;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final qw:Lcom/xiaopeng/datalog/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/xiaopeng/datalog/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/b/b;-><init>(Lcom/xiaopeng/datalog/b/b$1;)V

    sput-object v0, Lcom/xiaopeng/datalog/b/b$a;->qw:Lcom/xiaopeng/datalog/b/b;

    return-void
.end method
