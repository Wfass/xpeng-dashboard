.class public final synthetic L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lz;


# instance fields
.field private final synthetic f$0:Ljava/lang/Object;

.field private final synthetic f$1:Lz;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;->f$0:Ljava/lang/Object;

    iput-object p2, p0, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;->f$1:Lz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;->f$0:Ljava/lang/Object;

    iget-object v1, p0, L-$$Lambda$ahz$xj9AxIWGhq81PXY1SkjaN6FJLCA;->f$1:Lz;

    invoke-static {v0, v1, p1}, Lahz;->lambda$xj9AxIWGhq81PXY1SkjaN6FJLCA(Ljava/lang/Object;Lz;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
