.class Leo$2;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leo;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Let$c;

.field final synthetic b:I

.field final synthetic c:Leo;


# direct methods
.method constructor <init>(Leo;Let$c;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Leo$2;->c:Leo;

    iput-object p2, p0, Leo$2;->a:Let$c;

    iput p3, p0, Leo$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Leo$2;->a:Let$c;

    iget v1, p0, Leo$2;->b:I

    invoke-virtual {v0, v1}, Let$c;->a(I)V

    return-void
.end method
