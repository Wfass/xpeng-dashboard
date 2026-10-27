.class public abstract Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;
.super Ljava/lang/Object;
.source "XAppExitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Checker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$Checker;->this$0:Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract check(ILjava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager$ExitCheckResult;
.end method
