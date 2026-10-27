.class public final synthetic Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$83zI5KMIOalZZGwiszaGVEeg7uQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$83zI5KMIOalZZGwiszaGVEeg7uQ;->f$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/-$$Lambda$LluDanceManager$83zI5KMIOalZZGwiszaGVEeg7uQ;->f$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->lambda$observeData$0$LluDanceManager(Ljava/util/List;)V

    return-void
.end method
