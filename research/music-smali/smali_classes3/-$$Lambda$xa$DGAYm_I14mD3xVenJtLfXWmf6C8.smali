.class public final synthetic L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;

.field private final synthetic f$1:Lzx;

.field private final synthetic f$2:Ljava/lang/Class;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Lqg;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$0:Ljava/lang/Class;

    iput-object p2, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$1:Lzx;

    iput-object p3, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$2:Ljava/lang/Class;

    iput-object p4, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$3:Ljava/lang/String;

    iput-object p5, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$4:Lqg;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$0:Ljava/lang/Class;

    iget-object v1, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$1:Lzx;

    iget-object v2, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$2:Ljava/lang/Class;

    iget-object v3, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$3:Ljava/lang/String;

    iget-object v4, p0, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;->f$4:Lqg;

    move-object v5, p1

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v5}, Lxa;->lambda$DGAYm_I14mD3xVenJtLfXWmf6C8(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method
