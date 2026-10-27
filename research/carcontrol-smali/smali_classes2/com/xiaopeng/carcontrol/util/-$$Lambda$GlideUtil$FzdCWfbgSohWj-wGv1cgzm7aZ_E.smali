.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$FzdCWfbgSohWj-wGv1cgzm7aZ_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$FzdCWfbgSohWj-wGv1cgzm7aZ_E;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$FzdCWfbgSohWj-wGv1cgzm7aZ_E;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$FzdCWfbgSohWj-wGv1cgzm7aZ_E;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$GlideUtil$FzdCWfbgSohWj-wGv1cgzm7aZ_E;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/GlideUtil;->lambda$asyncLoadBackground$1(ILjava/lang/ref/WeakReference;)V

    return-void
.end method
