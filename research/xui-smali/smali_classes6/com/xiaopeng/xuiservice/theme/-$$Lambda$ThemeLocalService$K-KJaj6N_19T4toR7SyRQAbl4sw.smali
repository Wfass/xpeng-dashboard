.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;->f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;->f$0:Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$ThemeLocalService$K-KJaj6N_19T4toR7SyRQAbl4sw;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;->lambda$dumpThemes$1(Lcom/xiaopeng/xuiservice/theme/ThemeLocalService;Ljava/io/PrintWriter;Lcom/xiaopeng/xuimanager/theme/Theme;)V

    return-void
.end method
