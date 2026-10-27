.class public final synthetic Lcom/xiaopeng/aicabin/logic/-$$Lambda$SfXxdUhdCtDfZ4J-A9izI0SMkG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/logic/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/logic/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$SfXxdUhdCtDfZ4J-A9izI0SMkG8;->f$0:Lcom/xiaopeng/aicabin/logic/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$SfXxdUhdCtDfZ4J-A9izI0SMkG8;->f$0:Lcom/xiaopeng/aicabin/logic/a$a;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/aicabin/logic/a;->a(Lcom/xiaopeng/aicabin/logic/a$a;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
