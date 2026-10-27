.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$gyj-ZAJuye7C3hPyLYQpOmzxiz0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$NoParamCommandExecutor;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$gyj-ZAJuye7C3hPyLYQpOmzxiz0;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final exec()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$gyj-ZAJuye7C3hPyLYQpOmzxiz0;->f$0:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->lambda$dump$3(Ljava/io/PrintWriter;)V

    return-void
.end method
