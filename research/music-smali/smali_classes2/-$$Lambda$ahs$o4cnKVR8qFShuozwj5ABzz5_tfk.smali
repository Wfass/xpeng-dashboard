.class public final synthetic L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lahs;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lahs;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;->f$0:Lahs;

    iput-object p2, p0, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;->f$0:Lahs;

    iget-object v1, p0, L-$$Lambda$ahs$o4cnKVR8qFShuozwj5ABzz5_tfk;->f$1:Landroid/content/Context;

    check-cast p1, Laht;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1, p2}, Lahs;->lambda$o4cnKVR8qFShuozwj5ABzz5_tfk(Lahs;Landroid/content/Context;Laht;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
