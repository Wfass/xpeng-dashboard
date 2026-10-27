.class public final synthetic Lorg/chromium/base/task/-$$Lambda$xy-aFNPsYXYBuw6fQjZzGVzLbW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/chromium/base/task/TaskRunnerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/task/TaskRunnerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/task/-$$Lambda$xy-aFNPsYXYBuw6fQjZzGVzLbW0;->f$0:Lorg/chromium/base/task/TaskRunnerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/task/-$$Lambda$xy-aFNPsYXYBuw6fQjZzGVzLbW0;->f$0:Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskRunnerImpl;->f()V

    return-void
.end method
