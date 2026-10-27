.class public final synthetic Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$r$caF3cLg3h6WUnAV4kFNQC47dD7I;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/r;->lambda$caF3cLg3h6WUnAV4kFNQC47dD7I(Landroid/content/Context;I)V

    return-void
.end method
