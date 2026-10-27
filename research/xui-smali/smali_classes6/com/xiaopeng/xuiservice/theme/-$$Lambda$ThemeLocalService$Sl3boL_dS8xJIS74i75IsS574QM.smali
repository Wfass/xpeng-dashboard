.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$Sl3boL_dS8xJIS74i75IsS574QM;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->lambda$onEvent$0(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
