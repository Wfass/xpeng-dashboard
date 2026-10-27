.class public Lcom/xiaopeng/factory/utils/ShellUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/ShellUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "successMsg"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/xiaopeng/factory/utils/ShellUtils$CommandResult;->result:I

    .line 118
    iput-object p2, p0, Lcom/xiaopeng/factory/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/xiaopeng/factory/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    .line 120
    return-void
.end method
