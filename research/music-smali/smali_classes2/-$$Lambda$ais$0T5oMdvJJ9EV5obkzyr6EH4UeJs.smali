.class public final synthetic L-$$Lambda$ais$0T5oMdvJJ9EV5obkzyr6EH4UeJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$ais$0T5oMdvJJ9EV5obkzyr6EH4UeJs;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, L-$$Lambda$ais$0T5oMdvJJ9EV5obkzyr6EH4UeJs;->f$0:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lais;->lambda$0T5oMdvJJ9EV5obkzyr6EH4UeJs(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
