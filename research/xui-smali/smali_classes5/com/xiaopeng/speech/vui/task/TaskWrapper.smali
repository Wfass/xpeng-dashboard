.class public Lcom/xiaopeng/speech/vui/task/TaskWrapper;
.super Ljava/lang/Object;
.source "TaskWrapper.java"


# instance fields
.field private customizeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private displayLocation:Ljava/lang/String;

.field private elementGroupId:Ljava/lang/String;

.field private elementListener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ">;"
        }
    .end annotation
.end field

.field private isContainNotChildrenView:Z

.field private isWholeScene:Z

.field private listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field private mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

.field private parentElementId:Ljava/lang/String;

.field private priority:Lcom/xiaopeng/vui/commons/VuiPriority;

.field private recyclerView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private sceneId:Ljava/lang/String;

.field private subSceneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

.field private vid:Ljava/lang/String;

.field private view:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vid"    # I
    .param p3, "sceneId"    # Ljava/lang/String;
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 113
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 114
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vid"    # I
    .param p3, "sceneId"    # Ljava/lang/String;
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 120
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 121
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->recyclerView:Ljava/lang/ref/SoftReference;

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p6, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 135
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 136
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 138
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->priority:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 139
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "parentElementId"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 144
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 145
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 147
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->parentElementId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p6, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 151
    .local p5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 153
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 154
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 156
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p6, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p8, "isWholeScene"    # Z
    .param p9, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    .line 176
    .local p5, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 178
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 179
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 181
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 183
    iput-object p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 184
    iput-boolean p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 185
    iput-object p9, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p6, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p8, "isWholeScene"    # Z
    .param p9, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p10, "displayLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 188
    .local p5, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 190
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 191
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 193
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 195
    iput-object p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 196
    iput-boolean p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 197
    iput-object p9, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 198
    iput-object p10, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p6, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p8, "isWholeScene"    # Z
    .param p9, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p10, "displayLocation"    # Ljava/lang/String;
    .param p11, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    .line 203
    .local p5, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 205
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 206
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 208
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 210
    iput-object p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 211
    iput-boolean p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 212
    iput-object p9, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 213
    iput-object p10, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 214
    iput-object p11, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p5, "elementGroupId"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 257
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 258
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 259
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 260
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 261
    iput-object p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementGroupId:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 160
    .local p4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 162
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 164
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "view"    # Landroid/view/View;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 100
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 106
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 107
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->recyclerView:Ljava/lang/ref/SoftReference;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 77
    invoke-direct {p0, p3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p4, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 80
    .local p3, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 83
    invoke-direct {p0, p3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 84
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->recyclerView:Ljava/lang/ref/SoftReference;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "containNotChildrenView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 125
    .local p4, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 126
    invoke-direct {p0, p4}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->priority:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 129
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 130
    iput-boolean p5, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "callback"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation

    .line 168
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 170
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 172
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 173
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 1
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p7, "isWholeScene"    # Z
    .param p8, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            ")V"
        }
    .end annotation

    .line 217
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p4, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 218
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 219
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 222
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 224
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 225
    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 226
    iput-object p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 1
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p7, "isWholeScene"    # Z
    .param p8, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p9, "displayLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 228
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p4, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 229
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 230
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 233
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 235
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 236
    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 237
    iput-object p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 238
    iput-object p9, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 1
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .param p5, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;
    .param p7, "isWholeScene"    # Z
    .param p8, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .param p9, "displayLocation"    # Ljava/lang/String;
    .param p10, "sceneListener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    .line 242
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p4, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    .line 44
    const-string v0, "primary"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 243
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->revertViewListToSoftReference(Ljava/util/List;)V

    .line 244
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 247
    iput-object p4, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 249
    iput-object p6, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    .line 250
    iput-boolean p7, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    .line 251
    iput-object p8, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 252
    iput-object p9, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 253
    iput-object p10, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 254
    return-void
.end method

.method private revertViewListToSoftReference(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->viewList:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 92
    .local v1, "curView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "curView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getCustomizeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayLocation()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getElementGroupId()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getElementListener()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    return-object v0
.end method

.method public getParentElementId()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->parentElementId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->priority:Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object v0
.end method

.method public getRecyclerView()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->recyclerView:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public getSceneCallbackHandler()Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSceneIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->subSceneIds:Ljava/util/List;

    return-object v0
.end method

.method public getTaskType()Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public getViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->viewList:Ljava/util/List;

    return-object v0
.end method

.method public isContainNotChildrenView()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView:Z

    return v0
.end method

.method public isWholeScene()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene:Z

    return v0
.end method

.method public setCustomizeIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "customizeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->customizeIds:Ljava/util/List;

    .line 306
    return-void
.end method

.method public setDisplayLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayLocation"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->displayLocation:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setElementGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "elementGroupId"    # Ljava/lang/String;

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementGroupId:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 1
    .param p1, "elementListener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 313
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->elementListener:Ljava/lang/ref/SoftReference;

    .line 314
    return-void
.end method

.method public setListener(Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 286
    return-void
.end method

.method public setParentElementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentElementId"    # Ljava/lang/String;

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->parentElementId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 0
    .param p1, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 277
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->priority:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 278
    return-void
.end method

.method public setReturnCallBack(Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;)V
    .locals 0
    .param p1, "mSceneCallbackHandler"    # Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 350
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->mSceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    .line 351
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->sceneId:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setTaskType(Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;)V
    .locals 0
    .param p1, "taskType"    # Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 318
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->taskType:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    .line 319
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->vid:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 326
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->view:Ljava/lang/ref/SoftReference;

    .line 327
    return-void
.end method
