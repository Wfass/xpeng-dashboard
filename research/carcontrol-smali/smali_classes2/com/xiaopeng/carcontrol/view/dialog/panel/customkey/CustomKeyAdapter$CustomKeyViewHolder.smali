.class Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomKeyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomKeyViewHolder"
.end annotation


# instance fields
.field private mContentView:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemView",
            "listener"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    check-cast p1, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->mContentView:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    .line 157
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/toggle/XTextToggle;->setOnCheckedChangeListener(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;)Lcom/xiaopeng/xui/widget/toggle/XTextToggle;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/CustomKeyAdapter$CustomKeyViewHolder;->mContentView:Lcom/xiaopeng/xui/widget/toggle/XTextToggle;

    return-object p0
.end method
