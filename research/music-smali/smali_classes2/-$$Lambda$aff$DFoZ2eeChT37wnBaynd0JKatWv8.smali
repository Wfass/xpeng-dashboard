.class public final synthetic L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Laff;

.field private final synthetic f$1:Lqg;

.field private final synthetic f$2:Ljava/lang/Class;

.field private final synthetic f$3:J

.field private final synthetic f$4:Lahq;

.field private final synthetic f$5:Lqe;

.field private final synthetic f$6:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$0:Laff;

    iput-object p2, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$1:Lqg;

    iput-object p3, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$2:Ljava/lang/Class;

    iput-wide p4, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$3:J

    iput-object p6, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$4:Lahq;

    iput-object p7, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$5:Lqe;

    iput-object p8, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$6:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$0:Laff;

    iget-object v1, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$1:Lqg;

    iget-object v2, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$2:Ljava/lang/Class;

    iget-wide v3, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$3:J

    iget-object v5, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$4:Lahq;

    iget-object v6, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$5:Lqe;

    iget-object v7, p0, L-$$Lambda$aff$DFoZ2eeChT37wnBaynd0JKatWv8;->f$6:Ljava/util/Map;

    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v8}, Laff;->lambda$DFoZ2eeChT37wnBaynd0JKatWv8(Laff;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method
