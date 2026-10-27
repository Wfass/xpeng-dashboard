.class Lask$3;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lask;


# direct methods
.method constructor <init>(Lask;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lask$3;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lask$3;->a:Lask;

    invoke-virtual {p1}, Lask;->b()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lask$3;->a(Ljava/lang/Long;)V

    return-void
.end method
